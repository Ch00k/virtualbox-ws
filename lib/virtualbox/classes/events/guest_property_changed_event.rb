module VBox
  class GuestPropertyChangedEvent < MachineEvent

    attr_reader :ref

    # Attributes

    def name
      VBox::WebService.send_request(:i_guest_property_changed_event_get_name, _this)
    end

    def value
      VBox::WebService.send_request(:i_guest_property_changed_event_get_value, _this)
    end

    def flags
      VBox::WebService.send_request(:i_guest_property_changed_event_get_flags, _this)
    end
  end
end