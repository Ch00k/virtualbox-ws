module VBox
  class Base

    attr_reader :ref

    def initialize(obj_ref)
      @ref = obj_ref
    end

    def _this
      _this = {}
      _this[:_this] = @ref unless @ref.nil?
      _this
    end

    def ensure_hash(args)
      args.is_a?(Hash) ? args : raise(ArgumentError, 'Method arguments must be a hash')
    end

    def self.soap_method(method_name, modifier=nil)
      is_acronym_part = self.name.split('::').last.match(/^[A-Z]{2,}/).nil? ? '_' : ''
      modifier_part = modifier.nil? ? '' : modifier + '_'
      "i#{is_acronym_part}#{class_name}_#{modifier_part}#{method_name}".to_sym
    end

    def soap_method(method_name, modifier=nil)
      self.class.soap_method(method_name, modifier)
    end

    def self.class_name
      self.name.split('::').last.to_underscore
    end

    def class_name
      self.class.class_name
    end

    def process_result(result, force_array=false)
      if force_array
        return [] if result.nil?
        result = result.to_a
        vbox_class = result.first.vbox_class
        result.map { |item| item.to_vbox_object(vbox_class) }
      else
        return if result.nil?
        if result.is_a?(Array)
          result.map { |item| process_result(item) }
        elsif result.is_a?(Hash)
          result.update(result) { |_, value| process_result(value) }
        elsif !!result == result
          result
        elsif !result.match(/^[0-9a-f]{16}-[0-9a-f]{16}$/).nil?
          result.to_vbox_object(result.vbox_class)
        else
          result.to_num
        end
      end
    end

    def fix_savon_method_name(method_name)
      method_name.
          gsub('_3d_', '3_d_').
          gsub('_2d_', '2_d_').
          gsub('ipv6_', 'i_pv6_')
    end

    def fix_savon_tag_name(method_name)
      WebService::BROKEN_TAGS[method_name] if WebService::BROKEN_TAGS.include?(method_name)
    end

    def arrayize?(method_name)
      WebService::BROKEN_ARRAYS.include? method_name
    end

    def method_missing(name, *args)
      name = fix_savon_method_name name
      if name.end_with? '='
        name = name.chop
        savon_method = soap_method(name, 'set')
        if WebService.operations.include?(savon_method)
          savon_tag = fix_savon_tag_name(savon_method) || name
          soap_body = _this.merge(savon_tag => args[0])
        else
          return super
        end
      else
        if WebService.operations.include?(soap_method(name, 'get'))
          savon_method = soap_method(name, 'get')
          soap_body = _this
        elsif WebService.operations.include?(soap_method(name))
          savon_method = soap_method(name)
          args_hash = ensure_hash(args[-1] || {})
          soap_body = _this.merge(args_hash.referize!)
        else
          return super
        end
      end
      request = WebService.send_request(savon_method, soap_body)
      process_result(request, arrayize?(savon_method))
    end
  end
end
