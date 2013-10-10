require_rel '/../core_ext/string.rb'


module VBox

  attr_reader :ref

  class Base
    def initialize(obj_ref)
      @ref = obj_ref
    end

    def _this
      _this = {}
      _this[:_this] = @ref unless @ref.nil?
      _this
    end

    def vbox_class
      VBox::ManagedObjectRef.new(@ref).get_interface_name
    end

    def delete!
      VBox::ManagedObjectRef.new(@ref).release
    end

    def ensure_hash(args)
      raise ArgumentError, 'Method arguments must be a hash' unless args.is_a?(Hash)
    end
  end
end
