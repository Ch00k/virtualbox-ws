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

    def self.starts_with_acronym
      define_method(:starts_with_acronym) {}
    end

    def self.soap_method(method_name, modifier=nil)
      is_acronym_part = defined?(starts_with_acronym) ? '_' : ''
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

    def integerize(value)
      if value.is_a?(Array)
        value.map do |item|
          begin
            Integer(item)
          rescue ArgumentError
            item
          end
        end
      else
        begin
          Integer(value)
        rescue ArgumentError
          value
        end
      end
    end

    def classify(result, force_array=false)
      if force_array
        return [] if result.nil?
        result = result.to_a

        # Will assume here that in case of force_array all the items
        # in the array are objects of the same class
        val = result[0]
      else
        val = result
      end

      # If the result is not a string return it immediately
      return integerize(result) unless val.is_a?(String)

      # Check for a match
      return integerize(result) if val.match(/^[0-9a-f]{16}-[0-9a-f]{16}$/).nil?

      # Get VirtualBox interface name
      class_str = ManagedObjectRef.new(val).get_interface_name

      # ManagedObjectRef.get_interface_name returns nil
      # for inexisting object reference
      if class_str.nil?
        result
      else
        if force_array
          result.to_a.map { |item| VBox.const_get(class_str[1..-1]).new(item) }
        else
          VBox.const_get(class_str[1..-1]).new(result)
        end
      end
    end

    def self.vb_attr(name, options={})
      force_array = options[:force_array]
      force_tag = options[:force_tag]

      # A special case for VirtualBox methods that have lowercase 'v' in IPv6
      if name.to_s.start_with?('ipv6') || name.to_s.include?('advertise_default_ipv6_route_enabled')
        name = name.to_s.gsub('ipv6', 'i_pv6').to_sym
      end

      define_method(name) do
        result = WebService.send_request(soap_method(name, 'get'), _this)
        process_result(result, force_array)
      end

      define_method("#{name}=") do |value|
        soap_message = {force_tag ? force_tag : name => value}
        result = WebService.send_request(soap_method(name, 'set'), _this.merge(soap_message))
        process_result(result)
      end if WebService.operations.include?(soap_method(name, 'set'))
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

    def process_result(result, force_array=false)
      if force_array
        classify(result, true)
      else
        if result.is_a?(Array)
          result.map do |item|
            item.is_a?(Hash) ? item.update(item) { |_, value| classify(value) } : classify(item)
          end
        else
          classify(result)
        end
      end
    end
  end
end
