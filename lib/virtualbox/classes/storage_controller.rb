module VBox
  class StorageController < Base

    # Attributes

    def name
      WebService.send_request(:i_storage_controller_get_name, _this)
    end

    def max_devices_per_port_count
      WebService.send_request(:i_storage_controller_get_max_devices_per_port_count, _this)
    end

    def min_port_count
      WebService.send_request(:i_storage_controller_get_min_port_count, _this)
    end

    def instance
      WebService.send_request(:i_storage_controller_get_instance, _this)
    end

    def instance=(instance)
      WebService.send_request(:i_storage_controller_set_instance, _this.merge(:instance => instance))
    end

    def port_count
      WebService.send_request(:i_storage_controller_get_port_count, _this)
    end

    def port_count=(port_count)
      WebService.send_request(:i_storage_controller_set_port_count, _this.merge(:port_count => port_count))
    end

    def bus
      WebService.send_request(:i_storage_controller_get_bus, _this)
    end

    def controller_type
      WebService.send_request(:i_storage_controller_get_controller_type, _this)
    end

    def controller_type=(controller_type)
      WebService.send_request(:i_storage_controller_set_controller_type, _this.merge(:controller_type => controller_type))
    end

    def use_host_io_cache
      WebService.send_request(:i_storage_controller_get_use_host_io_cache, _this)
    end

    def use_host_io_cache=(use_host_io_cache)
      WebService.send_request(:i_storage_controller_set_use_host_io_cache, _this.merge(:use_host_io_cache => use_host_io_cache))
    end

    def bootable
      WebService.send_request(:i_storage_controller_get_bootable, _this)
    end
  end
end
