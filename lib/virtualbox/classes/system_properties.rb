module VBox
  class SystemProperties < Base

    vb_attr :min_guest_ram
    vb_attr :max_guest_ram
    vb_attr :min_guest_vram
    vb_attr :max_guest_vram
    vb_attr :min_guest_cpu_count
    vb_attr :max_guest_cpu_count
    vb_attr :max_guest_monitors
    vb_attr :info_vd_size
    vb_attr :serial_port_count
    vb_attr :parallel_port_count
    vb_attr :max_boot_position
    vb_attr :exclusive_hw_virt
    vb_attr :default_machine_folder
    vb_attr :logging_level
    vb_attr :medium_formats, :force_array => true
    vb_attr :default_hard_disk_format
    vb_attr :free_disk_space_warning
    vb_attr :free_disk_space_percent_warning
    vb_attr :free_disk_space_error
    vb_attr :free_disk_space_percent_error
    vb_attr :vrde_aurh_library, :force_tag => 'VRDEAuthLibrary'
    vb_attr :web_service_auth_library
    vb_attr :default_vrde_ext_pack
    vb_attr :log_history_count
    vb_attr :default_audio_driver
    vb_attr :autostart_database_path
    vb_attr :default_additions_iso
    vb_attr :default_frontend

    vb_method :get_default_io_cache_setting_for_storage_controller
    vb_method :get_device_types_for_storage_bus, :force_array => true
    vb_method :get_max_devices_per_port_for_storage_bus
    vb_method :get_max_instances_of_storage_bus
    vb_method :get_max_instances_of_usb_controller_type
    vb_method :get_max_network_adapters
    vb_method :get_max_network_adapters_of_type
    vb_method :get_max_port_count_for_storage_bus
    vb_method :get_min_port_count_for_storage_bus

  end
end
