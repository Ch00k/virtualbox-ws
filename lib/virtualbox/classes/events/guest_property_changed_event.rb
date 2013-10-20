module VBox
  class GuestPropertyChangedEvent < MachineEvent

    # Attributes

    def name
      WebService.send_request(:i_guest_property_changed_event_get_name, _this)
    end

    def value
      WebService.send_request(:i_guest_property_changed_event_get_value, _this)
    end

    def flags
      WebService.send_request(:i_guest_property_changed_event_get_flags, _this)
    end
  end
end