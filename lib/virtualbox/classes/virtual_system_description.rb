module VBox
  class VirtualSystemDescription < Base

    attr_reader :ref

    # Attributes

    def count
      VBox::WebService.send_request(:i_virtual_system_description_get_count, _this)
    end

    # Methods

    def add_description(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_system_description_add_description, _this)
    end

    def get_description
      VBox::WebService.send_request(:i_virtual_system_description_get_description, _this)
    end

    def get_description_by_type(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_system_description_get_description_by_type, _this)
    end

    def get_values_by_type(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_system_description_get_values_by_type, _this)
    end

    def set_final_values(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_system_description_set_final_values, _this)
    end
  end
end
