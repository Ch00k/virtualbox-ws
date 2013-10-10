module VBox
  class USBDeviceStateChangedEvent < Event

    attr_reader :ref

    # Attributes

    def device
      usb_device = VBox::WebService.send_request(:iusb_device_state_changed_event_get_device, _this)
      VBox::USBDevice.new(usb_device)
    end

    def attached
      VBox::WebService.send_request(:iusb_device_state_changed_event_get_attached, _this)
    end
  end
end
