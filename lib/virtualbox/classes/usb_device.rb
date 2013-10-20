module VBox
  class USBDevice < Base

    # Attributes

    def id
      WebService.send_request(:iusb_device_get_id, _this)
    end

    def vendor_id
      WebService.send_request(:iusb_device_get_vendor_id, _this)
    end

    def product_id
      WebService.send_request(:iusb_device_get_product_id, _this)
    end

    def revision
      WebService.send_request(:iusb_device_get_revision, _this)
    end

    def manufacturer
      WebService.send_request(:iusb_device_get_manufacturer, _this)
    end

    def product
      WebService.send_request(:iusb_device_get_product, _this)
    end

    def serial_number
      WebService.send_request(:iusb_device_get_serial_number, _this)
    end

    def address
      WebService.send_request(:iusb_device_get_address, _this)
    end

    def port
      WebService.send_request(:iusb_device_get_port, _this)
    end

    def version
      WebService.send_request(:iusb_device_get_version, _this)
    end

    def port_version
      WebService.send_request(:iusb_device_get_port_version, _this)
    end

    def remote
      WebService.send_request(:iusb_device_get_remote, _this)
    end
  end
end
