module VBox
  class USBDevice < Base

    attr_reader :ref

    # Attributes

    def id
      VBox::WebService.send_request(:iusb_device_get_id, _this)
    end

    def vendor_id
      VBox::WebService.send_request(:iusb_device_get_vendor_id, _this)
    end

    def product_id
      VBox::WebService.send_request(:iusb_device_get_product_id, _this)
    end

    def revision
      VBox::WebService.send_request(:iusb_device_get_revision, _this)
    end

    def manufacturer
      VBox::WebService.send_request(:iusb_device_get_manufacturer, _this)
    end

    def product
      VBox::WebService.send_request(:iusb_device_get_product, _this)
    end

    def serial_number
      VBox::WebService.send_request(:iusb_device_get_serial_number, _this)
    end

    def address
      VBox::WebService.send_request(:iusb_device_get_address, _this)
    end

    def port
      VBox::WebService.send_request(:iusb_device_get_port, _this)
    end

    def version
      VBox::WebService.send_request(:iusb_device_get_version, _this)
    end

    def port_version
      VBox::WebService.send_request(:iusb_device_get_port_version, _this)
    end

    def remote
      VBox::WebService.send_request(:iusb_device_get_remote, _this)
    end
  end
end
