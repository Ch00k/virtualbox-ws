module VBox
  class HostUSBDeviceFilter < USBDeviceFilter

    # Attributes

    def action
      VBox::WebService.send_request(:i_host_usb_device_filter_get_action, _this)
    end

    def action=(action)
      VBox::WebService.send_request(:i_host_usb_device_filter_set_action, _this.merge(:action => action))
    end
  end
end
