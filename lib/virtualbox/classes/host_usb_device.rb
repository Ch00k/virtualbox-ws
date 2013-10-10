module VBox
  class HostUSBDevice < USBDevice

    attr_reader :ref

    # Attributes

    def state
      VBox::WebService.send_request(:i_host_usb_device_get_state, _this)
    end
  end
end
