module VBox
  class ManagedObjectRef < Base

    # Methods

    def get_interface_name
      interface_name = VBox::WebService.send_request(:i_managed_object_ref_get_interface_name, _this)
      interface_name[1..-1]
    end

    def release
      VBox::WebService.send_request(:i_managed_object_ref_release, _this)
    end
  end
end
