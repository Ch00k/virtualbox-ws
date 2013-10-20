module VBox
  class SerialPort < Base

    # Attributes

    def slot
      WebService.send_request(:i_serial_port_get_slot, _this)
    end

    def enabled
      WebService.send_request(:i_serial_port_get_enabled, _this)
    end

    def enabled=(enabled)
      WebService.send_request(:i_serial_port_set_enabled, _this.merge(:enabled => enabled))
    end

    def io_base
      WebService.send_request(:i_serial_port_get_io_base, _this)
    end

    def io_base=(io_base)
      WebService.send_request(:i_serial_port_set_io_base, _this.merge(:io_base => io_base))
    end

    def irq
      WebService.send_request(:i_serial_port_get_irq, _this)
    end

    def irq=(irq)
      WebService.send_request(:i_serial_port_set_irq, _this.merge(:irq => irq))
    end

    def host_mode
      WebService.send_request(:i_serial_port_get_host_mode, _this)
    end

    def host_mode=(host_mode)
      WebService.send_request(:i_serial_port_set_host_mode, _this.merge(:host_mode => host_mode))
    end

    def server
      WebService.send_request(:i_serial_port_get_server, _this)
    end

    def server=(server)
      WebService.send_request(:i_serial_port_set_server, _this.merge(:server => server))
    end

    def path
      WebService.send_request(:i_serial_port_get_path, _this)
    end

    def path=(path)
      WebService.send_request(:i_serial_port_set_path, _this.merge(:path => path))
    end
  end
end
