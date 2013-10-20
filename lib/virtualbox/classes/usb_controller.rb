module VBox
  class USBController < Base

    # Attributes

    def enabled
      WebService.send_request(:iusb_controller_get_enabled, _this)
    end

    def enabled=(enabled)
      WebService.send_request(:iusb_controller_set_enabled, _this.merge(:enabled => enabled))
    end

    def enabled_ehci
      WebService.send_request(:iusb_controller_get_enabled_ehci, _this)
    end

    def enabled_ehci=(enabled_ehci)
      WebService.send_request(:iusb_controller_set_enabled_ehci, _this.merge(:enabled_ehci => enabled_ehci))
    end

    def proxy_available
      WebService.send_request(:iusb_controller_get_proxy_available, _this)
    end

    def usb_standard
      WebService.send_request(:iusb_controller_get_usb_standard, _this)
    end

    def device_filters
      device_filters = WebService.send_request(:iusb_controller_get_device_filters, _this)
      device_filters.map do |device_filter|
        USBDeviceFilter.new(device_filter)
      end
    end

    # Methods

    def create_device_filter(args={})
      ensure_hash args
      device_filter = WebService.send_request(:iusb_controller_create_device_filter, _this.merge(args))
      USBDeviceFilter.new(device_filter)
    end

    def insert_device_filter(args={})
      ensure_hash args
      args.referize! :filter
      WebService.send_request(:iusb_controller_insert_device_filter, _this.merge(args))
    end

    def remove_device_filter(args={})
      ensure_hash args
      WebService.send_request(:iusb_controller_remove_device_filter, _this.merge(args))
    end
  end
end
