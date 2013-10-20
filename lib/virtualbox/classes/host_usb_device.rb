module VBox
  class HostUSBDevice < USBDevice

    # Attributes

    def state
      WebService.send_request(:i_host_usb_device_get_state, _this)
    end
  end
end
