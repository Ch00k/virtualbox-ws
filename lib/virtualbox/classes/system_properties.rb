module VBox
  class SystemProperties < Base

    attr_reader :ref

    # Attributes

    def min_guest_ram
      VBox::WebService.send_request(:i_system_properties_get_min_guest_ram, _this)
    end

    def max_guest_ram
      VBox::WebService.send_request(:i_system_properties_get_max_guest_ram, _this)
    end

    def min_guest_vram
      VBox::WebService.send_request(:i_system_properties_get_min_guest_vram, _this)
    end

    def max_guest_vram
      VBox::WebService.send_request(:i_system_properties_get_max_guest_vram, _this)
    end

    def min_guest_cpu_count
      VBox::WebService.send_request(:i_system_properties_get_min_guest_cpu_count, _this)
    end

    def max_guest_cpu_count
      VBox::WebService.send_request(:i_system_properties_get_max_guest_cpu_count, _this)
    end

    def max_guest_monitors
      VBox::WebService.send_request(:i_system_properties_get_max_guest_monitors, _this)
    end

    def info_vd_size
      VBox::WebService.send_request(:i_system_properties_get_info_vd_size, _this)
    end

    def serial_port_count
      VBox::WebService.send_request(:i_system_properties_get_serial_port_count, _this)
    end

    def parallel_port_count
      VBox::WebService.send_request(:i_system_properties_get_parallel_port_count, _this)
    end

    def max_boot_position
      VBox::WebService.send_request(:i_system_properties_get_max_boot_position, _this)
    end

    def default_machine_folder
      VBox::WebService.send_request(:i_system_properties_get_default_machine_folder, _this)
    end

    def default_machine_folder=(default_machine_folder)
      VBox::WebService.send_request(:i_system_properties_set_default_machine_folder,
                                    _this.merge(:default_machine_folder => default_machine_folder))
    end

    def medium_formats
      medium_formats = VBox::WebService.send_request(:i_system_properties_get_medium_formats, _this)
      medium_formats.to_a.map do |medium_format|
        VBox::MediumFormat.new(medium_format)
      end
    end

    def default_hard_disk_format
      VBox::WebService.send_request(:i_system_properties_get_default_hard_disk_format, _this)
    end

    def default_hard_disk_format=(default_hard_disk_format)
      VBox::WebService.send_request(:i_system_properties_set_default_hard_disk_format,
                                    _this.merge(:default_hard_disk_format => default_hard_disk_format))
    end

    def free_disk_space_warning
      VBox::WebService.send_request(:i_system_properties_get_free_disk_space_warning, _this)
    end

    def free_disk_space_warning=(free_disk_space_warning)
      VBox::WebService.send_request(:i_system_properties_set_free_disk_space_warning,
                                    _this.merge(:free_disk_space_warning => free_disk_space_warning))
    end

    def free_disk_space_percent_warning
      VBox::WebService.send_request(:i_system_properties_get_free_disk_space_percent_warning, _this)
    end

    def free_disk_space_percent_warning=(free_disk_space_percent_warning)
      VBox::WebService.send_request(:i_system_properties_set_free_disk_space_percent_warning,
                                    _this.merge(:free_disk_space_percent_warning => free_disk_space_percent_warning))
    end

    def free_disk_space_error
      VBox::WebService.send_request(:i_system_properties_get_free_disk_space_error, _this)
    end

    def free_disk_space_error=(free_disk_space_error)
      VBox::WebService.send_request(:i_system_properties_set_free_disk_space_error,
                                    _this.merge(:free_disk_space_error => free_disk_space_error))
    end

    def free_disk_space_percent_error
      VBox::WebService.send_request(:i_system_properties_get_free_disk_space_percent_error, _this)
    end

    def free_disk_space_percent_error=(free_disk_space_percent_error)
      VBox::WebService.send_request(:i_system_properties_set_free_disk_space_percent_error,
                                    _this.merge(:free_disk_space_percent_error => free_disk_space_percent_error))
    end

    def vrde_auth_library
      VBox::WebService.send_request(:i_system_properties_get_vrde_auth_library, _this)
    end

    def vrde_auth_library=(vrde_auth_library)
      VBox::WebService.send_request(:i_system_properties_set_vrde_auth_library,
                                    _this.merge('VRDEAuthLibrary' => vrde_auth_library))
    end

    def web_service_auth_library
      VBox::WebService.send_request(:i_system_properties_get_web_service_auth_library, _this)
    end

    def web_service_auth_library=(web_service_auth_library)
      VBox::WebService.send_request(:i_system_properties_set_web_service_auth_library,
                                    _this.merge(:web_service_auth_library => web_service_auth_library))
    end

    def default_vrde_ext_pack
      VBox::WebService.send_request(:i_system_properties_get_default_vrde_ext_pack, _this)
    end

    def default_vrde_ext_pack=(default_vrde_ext_pack)
      VBox::WebService.send_request(:i_system_properties_set_default_vrde_ext_pack,
                                    _this.merge(:default_vrde_ext_pack => default_vrde_ext_pack))
    end

    def log_history_count
      VBox::WebService.send_request(:i_system_properties_get_log_history_count, _this)
    end

    def log_history_count=(log_history_count)
      VBox::WebService.send_request(:i_system_properties_set_log_history_count,
                                    _this.merge(:log_history_count => log_history_count))
    end

    def default_audio_driver
      VBox::WebService.send_request(:i_system_properties_get_default_audio_driver, _this)
    end

    def auto_start_database_path
      VBox::WebService.send_request(:i_system_properties_get_auto_start_database_path, _this)
    end

    def auto_start_database_path=(auto_start_database_path)
      VBox::WebService.send_request(:i_system_properties_set_auto_start_database_path,
                                    _this.merge(:auto_start_database_path => auto_start_database_path))
    end

    def default_additions_iso
      VBox::WebService.send_request(:i_system_properties_get_default_additions_iso, _this)
    end

    def default_additions_iso=(default_additions_iso)
      VBox::WebService.send_request(:i_system_properties_set_default_additions_iso,
                                    _this.merge(:default_additions_iso => default_additions_iso))
    end

    # Methods

    def get_default_io_cache_setting_for_storage_controller(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_default_io_cache_setting_for_storage_controller,
                                    _this.merge(args))
    end

    def get_device_types_for_storage_bus(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_device_types_for_storage_bus, _this.merge(args))
    end

    def get_max_instances_of_storage_bus(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_max_instances_of_storage_bus, _this.merge(args))
    end

    def get_max_network_adapters(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_max_network_adapters, _this.merge(args))
    end

    def get_max_network_adapters_of_type(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_max_network_adapters_of_type, _this.merge(args))
    end

    def get_max_port_count_for_storage_bus(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_max_port_count_for_storage_bus, _this.merge(args))
    end

    def get_min_port_count_for_storage_bus(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_system_properties_get_min_port_count_for_storage_bus, _this.merge(args))
    end
  end
end
