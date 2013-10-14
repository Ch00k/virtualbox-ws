module VBox
  class ParallelPort < Base

    # Attributes

    def slot
      VBox::WebService.send_request(:i_parallel_port_get_slot, _this)
    end
    
    def enabled
      VBox::WebService.send_request(:i_parallel_port_get_enabled, _this)
    end

    def enabled=(enabled)
      VBox::WebService.send_request(:i_parallel_port_set_enabled, _this.merge(:enabled => enabled))
    end

    def io_base
      VBox::WebService.send_request(:i_parallel_port_get_io_base, _this)
    end

    def io_base=(io_base)
      VBox::WebService.send_request(:i_parallel_port_set_io_base, _this.merge(:io_base => io_base))
    end

    def irq
      VBox::WebService.send_request(:i_parallel_port_get_irq, _this)
    end

    def irq=(irq)
      VBox::WebService.send_request(:i_parallel_port_set_irq, _this.merge(:irq => irq))
    end

    def path
      VBox::WebService.send_request(:i_parallel_port_get_path, _this)
    end

    def path=(path)
      VBox::WebService.send_request(:i_parallel_port_set_path, _this.merge(:path => path))
    end
  end
end
