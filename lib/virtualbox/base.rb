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
      raise ArgumentError, 'Method arguments must be a hash' unless args.is_a?(Hash)
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

    def self.vb_attr(name, options={})
      force_array = options[:force_array]
      force_tag = options[:force_tag]
      force_savon_method = options[:force_savon_method]

      native_name = force_savon_method || name

      define_method(name) do
        result = WebService.send_request(soap_method(native_name, 'get'), _this)
        process_result(result, force_array)
      end

      define_method("#{name}=") do |value|
        soap_message = {force_tag ? force_tag : native_name => value}
        result = WebService.send_request(soap_method(native_name, 'set'), _this.merge(soap_message))
        process_result(result)
      end if WebService.operations.include?(soap_method(native_name, 'set'))
    end

    def self.vb_method(name, options={})
      force_array = options[:force_array]

      define_method(name) do |meth_args = {}|
        ensure_hash meth_args
        meth_args.referize!
        result = WebService.send_request(soap_method(name), _this.merge(meth_args))
        process_result(result, force_array)
      end
    end
  end
end
