module VBox
  class USBDeviceFilter < Base

    # Attributes

    def name
      VBox::WebService.send_request(:iusb_device_filter_get_name, _this)
    end

    def name=(name)
      VBox::WebService.send_request(:iusb_device_filter_set_name, _this.merge(:name => name))
    end

    def active
      VBox::WebService.send_request(:iusb_device_filter_get_active, _this)
    end

    def active=(active)
      VBox::WebService.send_request(:iusb_device_filter_set_active, _this.merge(:active => active))
    end

    def vendor_id
      VBox::WebService.send_request(:iusb_device_filter_get_vendor_id, _this)
    end

    def vendor_id=(vendor_id)
      VBox::WebService.send_request(:iusb_device_filter_set_vendor_id, _this.merge(:vendor_id => vendor_id))
    end

    def product_id
      VBox::WebService.send_request(:iusb_device_filter_get_product_id, _this)
    end

    def product_id=(product_id)
      VBox::WebService.send_request(:iusb_device_filter_set_product_id, _this.merge(:product_id => product_id))
    end

    def revision
      VBox::WebService.send_request(:iusb_device_filter_get_revision, _this)
    end

    def revision=(revision)
      VBox::WebService.send_request(:iusb_device_filter_set_revision, _this.merge(:revision => revision))
    end

    def manufacturer
      VBox::WebService.send_request(:iusb_device_filter_get_manufacturer, _this)
    end

    def manufacturer=(manufacturer)
      VBox::WebService.send_request(:iusb_device_filter_set_manufacturer, _this.merge(:manufacturer => manufacturer))
    end

    def product
      VBox::WebService.send_request(:iusb_device_filter_get_product, _this)
    end

    def product=(product)
      VBox::WebService.send_request(:iusb_device_filter_set_product, _this.merge(:product => product))
    end

    def serial_number
      VBox::WebService.send_request(:iusb_device_filter_get_serial_number, _this)
    end

    def serial_number=(serial_number)
      VBox::WebService.send_request(:iusb_device_filter_set_serial_number, _this.merge(:serial_number => serial_number))
    end

    def port
      VBox::WebService.send_request(:iusb_device_filter_get_port, _this)
    end

    def port=(port)
      VBox::WebService.send_request(:iusb_device_filter_set_port, _this.merge(:port => port))
    end

    def remote
      VBox::WebService.send_request(:iusb_device_filter_get_remote, _this)
    end

    def remote=(remote)
      VBox::WebService.send_request(:iusb_device_filter_set_remote, _this.merge(:remote => remote))
    end

    def masked_interfaces
      VBox::WebService.send_request(:iusb_device_filter_get_masked_interfaces, _this)
    end

    def masked_interfaces=(masked_interfaces)
      VBox::WebService.send_request(:iusb_device_filter_set_masked_interfaces, _this.merge(:masked_interfaces => masked_interfaces))
    end
  end
end
