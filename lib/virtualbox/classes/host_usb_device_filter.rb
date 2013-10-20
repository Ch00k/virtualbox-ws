module VBox
  class HostUSBDeviceFilter < USBDeviceFilter

    # Attributes

    def action
      WebService.send_request(:i_host_usb_device_filter_get_action, _this)
    end

    def action=(action)
      WebService.send_request(:i_host_usb_device_filter_set_action, _this.merge(:action => action))
    end
  end
end
