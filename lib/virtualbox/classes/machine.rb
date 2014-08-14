module VBox
  class Machine < Base

    vb_attr :parent
    vb_attr :icon
    vb_attr :accessible
    vb_attr :access_error
    vb_attr :name
    vb_attr :description
    vb_attr :id
    vb_attr :groups, :force_array => true
    vb_attr :os_type_id, :force_tag => 'OSTypeId'
    vb_attr :hardware_version
    vb_attr :hardware_uuid
    vb_attr :cpu_count, :force_tag => 'CPUCount'
    vb_attr :cpu_hot_plug_enabled, :force_tag => 'CPUHotPlugEnabled'
    vb_attr :cpu_execution_cap, :force_tag => 'CPUExecutionCap'
    vb_attr :memory_size
    vb_attr :memory_balloon_size
    vb_attr :page_fusion_enabled
    vb_attr :graphics_controller_type
    vb_attr :vram_size, :force_tag => 'VRAMSize'
    vb_attr :accelerate_3d_enabled, :force_savon_method => :accelerate3_d_enabled
    vb_attr :accelerate_2d_video_enabled, :force_savon_method => :accelerate2_d_video_enabled
    vb_attr :monitor_count
    vb_attr :video_capture_enabled
    vb_attr :video_capture_screens, :force_array => true
    vb_attr :video_capture_file
    vb_attr :video_capture_width
    vb_attr :video_capture_height
    vb_attr :video_capture_rate
    vb_attr :video_capture_fps
    vb_attr :bios_settings
    vb_attr :firmware_type
    vb_attr :pointing_hid_type
    vb_attr :keyboard_hid_type
    vb_attr :hpet_enabled, :force_tag => 'HPETEnabled'
    vb_attr :chipset_type
    vb_attr :snapshot_folder
    vb_attr :vrde_server
    vb_attr :emulated_usb_card_reader_enabled
    vb_attr :medium_attachments
    vb_attr :usb_controllers, :force_array => true
    vb_attr :usb_device_filter, :force_array => true
    vb_attr :audio_adapter
    vb_attr :storage_controllers, :force_array => true
    vb_attr :settings_file_path
    vb_attr :settings_modified
    vb_attr :session_state
    vb_attr :session_type
    vb_attr :session_pid
    vb_attr :state
    vb_attr :last_state_change
    vb_attr :state_file_path
    vb_attr :log_folder
    vb_attr :current_snapshot
    vb_attr :snapshot_count
    vb_attr :current_state_modified
    vb_attr :shared_folders, :force_array => true
    vb_attr :clipboard_mode
    vb_attr :drag_and_drop_mode
    vb_attr :guest_property_notification_patterns
    vb_attr :teleporter_enabled
    vb_attr :teleporter_port
    vb_attr :teleporter_address
    vb_attr :teleporter_password
    vb_attr :fault_tolerance_state
    vb_attr :fault_tolerance_port
    vb_attr :fault_tolerance_address
    vb_attr :fault_tolerance_password
    vb_attr :fault_tolerance_sync_interval
    vb_attr :rtc_use_utc, :force_tag => 'RTCUseUTC'
    vb_attr :io_cache_enabled, :force_tag => 'IOCacheEnabled'
    vb_attr :io_cache_size, :force_tag => 'IOCacheSize'
    vb_attr :pci_device_assignments
    vb_attr :bandwidth_control
    vb_attr :tracing_enabled
    vb_attr :tracing_config
    vb_attr :allow_tracing_to_access_vm
    vb_attr :autostart_enabled
    vb_attr :autostart_delay
    vb_attr :autostop_type
    vb_attr :default_frontend
    vb_attr :usb_proxy_available

    vb_method :add_storage_controller
    vb_method :add_usb_controller
    vb_method :attach_device
    vb_method :attach_device_without_medium
    vb_method :attach_host_pci_device
    vb_method :can_show_console_window
    vb_method :clone_to
    vb_method :create_shared_folder
    vb_method :delete_config
    vb_method :delete_guest_property
    vb_method :detach_device
    vb_method :detach_host_pci_device
    vb_method :discard_settings
    vb_method :enumerate_guest_properties
    vb_method :export_to
    vb_method :find_snapshot
    vb_method :get_boot_order
    vb_method :get_cpuid_leaf
    vb_method :get_cpu_property
    vb_method :get_cpu_status
    vb_method :get_extra_data
    vb_method :get_extra_data_keys, :force_array => true
    vb_method :get_guest_property
    vb_method :get_guest_property_timestamp
    vb_method :get_guest_property_value
    vb_method :get_hw_virt_ex_property
    vb_method :get_medium
    vb_method :get_medium_attachment
    vb_method :get_medium_attachments_of_controller
    vb_method :get_network_adapter
    vb_method :get_parallel_port
    vb_method :get_serial_port
    vb_method :get_storage_controller_by_instance
    vb_method :get_storage_controller_by_name
    vb_method :get_usb_controller_by_name
    vb_method :get_usb_controller_count_by_type
    vb_method :hot_plug_cpu
    vb_method :hot_unplug_cpu
    vb_method :launch_vm_process
    vb_method :lock_machine
    vb_method :mount_medium
    vb_method :non_rotational_device
    vb_method :passthrough_device
    vb_method :query_log_filename
    vb_method :query_saved_guest_screen_info
    vb_method :query_saved_screenshot_png_size
    vb_method :query_saved_thumbnail_size
    vb_method :read_log
    vb_method :read_saved_screenshot_png_to_array
    vb_method :read_saved_thumbnail_png_to_array
    vb_method :read_saved_thumbnail_to_array
    vb_method :remove_all_cpuid_leaves
    vb_method :remove_cpuid_leaf
    vb_method :remove_shared_folder
    vb_method :remove_storage_controller
    vb_method :remove_usb_controller
    vb_method :save_settings
    vb_method :set_auto_discard_device
    vb_method :set_bandwidth_group_for_device
    vb_method :set_boot_order
    vb_method :set_cpuid_leaf
    vb_method :set_cpu_property
    vb_method :set_extra_data
    vb_method :set_guest_property
    vb_method :set_guest_property_value
    vb_method :set_hw_virt_ex_property
    vb_method :set_hot_pluggable_for_device
    vb_method :set_no_bandwidth_group_for_device
    vb_method :set_settings_file_path
    vb_method :set_storage_controller_bootable
    vb_method :show_console_window
    vb_method :temporary_eject_device
    vb_method :umount_medium
    vb_method :unregister, :force_array => true

  end
end
