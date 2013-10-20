module VBox
  class USBDeviceStateChangedEvent < Event

    # Attributes

    def device
      usb_device = WebService.send_request(:iusb_device_state_changed_event_get_device, _this)
      USBDevice.new(usb_device)
    end

    def attached
      WebService.send_request(:iusb_device_state_changed_event_get_attached, _this)
    end
  end
end
