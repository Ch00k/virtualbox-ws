module VBox
  class Machine < Base

    # Attributes
    
    def parent
      parent = WebService.send_request(:i_machine_get_parent, _this)
      Machine.new(parent)
    end

    def accessible
      WebService.send_request(:i_machine_get_accessible, _this)
    end

    def access_error
      access_error = WebService.send_request(:i_machine_get_access_error, _this)
      VirtualBoxErrorInfo.new(access_error)
    end

    def name
      WebService.send_request(:i_machine_get_name, _this)
    end

    def name=(name)
      WebService.send_request(:i_machine_set_name, _this.merge(:name => name))
    end

    def description
      WebService.send_request(:i_machine_get_description, _this)
    end

    def description=(description)
      WebService.send_request(:i_machine_set_description, _this.merge(:description => description))
    end

    def id
      WebService.send_request(:i_machine_get_id, _this)
    end

    def groups
      WebService.send_request(:i_machine_get_groups, _this)
    end

    def groups=(groups)
      WebService.send_request(:i_machine_set_groups, _this.merge(:groups => groups))
    end

    def os_type_id
      WebService.send_request(:i_machine_get_os_type_id, _this)
    end

    def os_type_id=(os_type_id)
      WebService.send_request(:i_machine_set_os_type_id, _this.merge('OSTypeId' => os_type_id))
    end

    def hardware_version
      WebService.send_request(:i_machine_get_hardware_version, _this)
    end

    def hardware_version=(hardware_version)
      WebService.send_request(:i_machine_set_hardware_version,
                                    _this.merge(:hardware_version => hardware_version))
    end

    def hardware_uuid
      WebService.send_request(:i_machine_get_hardware_uuid, _this)
    end

    def hardware_uuid=(hardware_uuid)
      WebService.send_request(:i_machine_set_hardware_uuid, _this.merge(:hardware_uuid => hardware_uuid))
    end

    def cpu_count
      WebService.send_request(:i_machine_get_cpu_count, _this)
    end

    def cpu_count=(cpu_count)
      WebService.send_request(:i_machine_set_cpu_count, _this.merge('CPUCount' => cpu_count))
    end

    def cpu_hot_plug_enabled
      WebService.send_request(:i_machine_get_cpu_hot_plug_enabled, _this)
    end

    def cpu_hot_plug_enabled=(cpu_hot_plug_enabled)
      WebService.send_request(:i_machine_set_cpu_hot_plug_enabled,
                                    _this.merge('CPUHotPlugEnabled' => cpu_hot_plug_enabled))
    end

    def cpu_execution_cap
      WebService.send_request(:i_machine_get_cpu_execution_cap, _this)
    end

    def cpu_execution_cap=(cpu_execution_cap)
      WebService.send_request(:i_machine_set_cpu_execution_cap,
                                    _this.merge('CPUExecutionCap' => cpu_execution_cap))
    end

    def memory_size
      WebService.send_request(:i_machine_get_memory_size, _this)
    end

    def memory_size=(memory_size)
      WebService.send_request(:i_machine_set_memory_size, _this.merge(:memory_size => memory_size))
    end

    def memory_balloon_size
      WebService.send_request(:i_machine_get_memory_balloon_size, _this)
    end

    def memory_balloon_size=(memory_balloon_size)
      WebService.send_request(:i_machine_set_memory_balloon_size,
                                    _this.merge(:memory_balloon_size => memory_balloon_size))
    end

    def page_fusion_enabled
      WebService.send_request(:i_machine_get_page_fusion_enabled, _this)
    end

    def page_fusion_enabled=(page_fusion_enabled)
      WebService.send_request(:i_machine_set_page_fusion_enabled,
                                    _this.merge(:page_fusion_enabled => page_fusion_enabled))
    end

    def vram_size
      WebService.send_request(:i_machine_get_vram_size, _this)
    end

    def vram_size=(vram_size)
      WebService.send_request(:i_machine_set_vram_size, _this.merge('VRAMSize' => vram_size))
    end

    def accelerate_3d_enabled
      WebService.send_request(:i_machine_get_accelerate_3d_enabled, _this)
    end

    def accelerate_3d_enabled=(accelerate_3d_enabled)
      WebService.send_request(:i_machine_set_accelerate_3d_enabled,
                                    _this.merge(:accelerate_3d_enabled => accelerate_3d_enabled))
    end

    def accelerate_2d_video_enabled
      WebService.send_request(:i_machine_get_accelerate_2d_video_enabled, _this)
    end

    def accelerate_2d_video_enabled=(accelerate_2d_video_enabled)
      WebService.send_request(:i_machine_set_accelerate_2d_video_enabled,
                                    _this.merge(:accelerate_2d_video_enabled => accelerate_2d_video_enabled))
    end

    def monitor_count
      WebService.send_request(:i_machine_get_monitor_count, _this)
    end

    def monitor_count=(monitor_count)
      WebService.send_request(:i_machine_set_monitor_count, _this.merge(:monitor_count => monitor_count))
    end

    def video_capture_enabled
      WebService.send_request(:i_machine_get_video_capture_enabled, _this)
    end

    def video_capture_enabled=(video_capture_enabled)
      WebService.send_request(:i_machine_set_video_capture_enabled,
                                    _this.merge('VideoCaptureEnabled' => video_capture_enabled))
    end

    def video_capture_file
      WebService.send_request(:i_machine_get_video_capture_file, _this)
    end

    def video_capture_file=(video_capture_file)
      WebService.send_request(:i_machine_set_video_capture_file,
                                    _this.merge('VideoCaptureFile' => video_capture_file))
    end

    def video_capture_width
      WebService.send_request(:i_machine_get_video_capture_width, _this)
    end

    def video_capture_width=(video_capture_width)
      WebService.send_request(:i_machine_set_video_capture_width,
                                    _this.merge('VideoCaptureWidth' => video_capture_width))
    end

    def video_capture_height
      WebService.send_request(:i_machine_get_video_capture_height, _this)
    end

    def video_capture_height=(video_capture_height)
      WebService.send_request(:i_machine_set_video_capture_height,
                                    _this.merge('VideoCaptureHeight' => video_capture_height))
    end

    def bios_settings
      bios_settings = WebService.send_request(:i_machine_get_bios_settings, _this)
      BIOSSettings.new(bios_settings)
    end

    def firmware_type
      WebService.send_request(:i_machine_get_firmware_type, _this)

    end

    def firmware_type=(firmware_type)
      WebService.send_request(:i_machine_set_firmware_type, _this.merge(:firmware_type => firmware_type))
    end

    def pointing_hid_type
      WebService.send_request(:i_machine_get_pointing_hid_type, _this)
    end

    def pointing_hid_type=(pointing_hid_type)
      WebService.send_request(:i_machine_set_pointing_hid_type,
                                    _this.merge(:pointing_hid_type => pointing_hid_type))
    end

    def keyboard_hid_type
      WebService.send_request(:i_machine_get_keyboard_hid_type, _this)
    end

    def keyboard_hid_type=(keyboard_hid_type)
      WebService.send_request(:i_machine_set_keyboard_hid_type,
                                    _this.merge(:keyboard_hid_type => keyboard_hid_type))
    end

    def hpet_enabled
      WebService.send_request(:i_machine_get_hpet_enabled, _this)
    end

    def hpet_enabled=(hpet_enabled)
      WebService.send_request(:i_machine_set_hpet_enabled, _this.merge('HPETEnabled' => hpet_enabled))
    end

    def chipset_type
      WebService.send_request(:i_machine_get_chipset_type, _this)
    end

    def chipset_type=(chipset_type)
      WebService.send_request(:i_machine_set_chipset_type, _this.merge(:chipset_type => chipset_type))
    end

    def snapshot_folder
      WebService.send_request(:i_machine_get_snapshot_folder, _this)
    end

    def snapshot_folder=(snapshot_folder)
      WebService.send_request(:i_machine_set_snapshot_folder, _this.merge(:snapshot_folder => snapshot_folder))
    end

    def vrde_server
      vrde_server = WebService.send_request(:i_machine_get_vrde_server, _this)
      VRDEServer.new(vrde_server)
    end

    def emaulated_usb_webcamera_enabled
      WebService.send_request(:i_machine_get_emaulated_usb_webcamera_enabled, _this)
    end
    
    def emaulated_usb_webcamera_enabled=(emaulated_usb_webcamera_enabled)
      WebService.send_request(:i_machine_set_emaulated_usb_webcamera_enabled,
                                    _this.merge(:emaulated_usb_webcamera_enabled => emaulated_usb_webcamera_enabled))
    end

    def emaulated_usb_card_reader_enabled
      WebService.send_request(:i_machine_get_emaulated_usb_card_reader_enabled, _this)
    end

    def emaulated_usb_card_reader_enabled=(emaulated_usb_card_reader_enabled)
      WebService.send_request(:i_machine_set_emaulated_usb_card_reader_enabled,
                                    _this.merge(:emaulated_usb_card_reader_enabled =>
                                                    emaulated_usb_card_reader_enabled))
    end

    def medium_attachments
      medium_attachments = WebService.send_request(:i_machine_get_medium_attachments, _this)
      medium_attachments.to_a.map do |medium_attachment|
        MediumAttachment.new(medium_attachment)
      end
    end

    def usb_controller
      usb_controller = WebService.send_request(:i_machine_get_usb_controller, _this)
      USBController.new(usb_controller)
    end

    def audio_adapter
      audio_adapter = WebService.send_request(:i_machine_get_audio_adapter, _this)
      AudioAdapter.new(audio_adapter)
    end

    def storage_controllers
      storage_controllers = WebService.send_request(:i_machine_get_storage_controllers, _this)
      storage_controllers.to_a.map do |storage_controller|
        StorageController.new(storage_controller)
      end
    end
    
    def settings_file_path
      WebService.send_request(:i_machine_get_settings_file_path, _this)
    end

    def settings_modified
      WebService.send_request(:i_machine_get_settings_modified, _this)
    end

    def session_state
      WebService.send_request(:i_machine_get_session_state, _this)
    end

    def session_type
      WebService.send_request(:i_machine_get_session_type, _this)
    end

    def session_pid
      WebService.send_request(:i_machine_get_session_pid, _this)
    end

    def state
      WebService.send_request(:i_machine_get_state, _this)
    end

    def last_state_change
      WebService.send_request(:i_machine_get_last_state_change, _this)
    end

    def state_file_path
      WebService.send_request(:i_machine_get_state_file_path, _this)
    end

    def log_folder
      WebService.send_request(:i_machine_get_log_folder, _this)
    end

    def current_snapshot
      current_snapshot = WebService.send_request(:i_machine_get_current_snapshot, _this)
      Snapshot.new(current_snapshot)
    end

    def snapshot_count
      WebService.send_request(:i_machine_get_snapshot_count, _this)
    end

    def current_state_modified
      WebService.send_request(:i_machine_get_current_state_modified, _this)
    end

    def shared_folders
      shared_folders = WebService.send_request(:i_machine_get_shared_folders, _this)
      shared_folders.to_a.map do |shared_folder|
        SharedFolder.new(shared_folder)
      end
    end

    def clipboard_mode
      WebService.send_request(:i_machine_get_clipboard_mode, _this)
    end

    def clipboard_mode=(clipboard_mode)
      WebService.send_request(:i_machine_set_clipboard_mode, _this.merge(:clipboard_mode => clipboard_mode))
    end

    def drag_and_drop_mode
      WebService.send_request(:i_machine_get_drag_and_drop_mode, _this)
    end

    def drag_and_drop_mode=(drag_and_drop_mode)
      WebService.send_request(:i_machine_set_drag_and_drop_mode,
                                    _this.merge(:drag_and_drop_mode => drag_and_drop_mode))
    end

    def guest_property_notification_patterns
      WebService.send_request(:i_machine_get_guest_property_notification_patterns, _this)
    end

    def guest_property_notification_patterns=(guest_property_notification_patterns)
      WebService.send_request(:i_machine_set_guest_property_notification_patterns,
                                    _this.merge(:guest_property_notification_patterns =>
                                                    guest_property_notification_patterns))
    end

    def teleporter_enabled
      WebService.send_request(:i_machine_get_teleporter_enabled, _this)
    end

    def teleporter_enabled=(teleporter_enabled)
      WebService.send_request(:i_machine_set_teleporter_enabled,
                                    _this.merge(:teleporter_enabled => teleporter_enabled))
    end

    def teleporter_port
      WebService.send_request(:i_machine_get_teleporter_port, _this)
    end

    def teleporter_port=(teleporter_port)
      WebService.send_request(:i_machine_set_teleporter_port,
                                    _this.merge(:teleporter_port => teleporter_port))
    end

    def teleporter_address
      WebService.send_request(:i_machine_get_teleporter_address, _this)
    end

    def teleporter_address=(teleporter_address)
      WebService.send_request(:i_machine_set_teleporter_address,
                                    _this.merge(:teleporter_address => teleporter_address))
    end

    def teleporter_password
      WebService.send_request(:i_machine_get_teleporter_password, _this)
    end

    def teleporter_password=(teleporter_password)
      WebService.send_request(:i_machine_set_teleporter_password,
                                    _this.merge(:teleporter_password => teleporter_password))
    end

    def fault_tolerance_state
      WebService.send_request(:i_machine_get_fault_tolerance_state, _this)
    end

    def fault_tolerance_state=(fault_tolerance_state)
      WebService.send_request(:i_machine_set_fault_tolerance_state,
                                    _this.merge(:fault_tolerance_state => fault_tolerance_state))
    end

    def fault_tolerance_port
      WebService.send_request(:i_machine_get_fault_tolerance_port, _this)
    end

    def fault_tolerance_port=(fault_tolerance_port)
      WebService.send_request(:i_machine_set_fault_tolerance_port,
                                    _this.merge(:fault_tolerance_port => fault_tolerance_port))
    end

    def fault_tolerance_address
      WebService.send_request(:i_machine_get_fault_tolerance_address, _this)
    end

    def fault_tolerance_address=(fault_tolerance_address)
      WebService.send_request(:i_machine_set_fault_tolerance_address,
                                    _this.merge(:fault_tolerance_address => fault_tolerance_address))
    end

    def fault_tolerance_password
      WebService.send_request(:i_machine_get_fault_tolerance_password, _this)
    end

    def fault_tolerance_password=(fault_tolerance_password)
      WebService.send_request(:i_machine_set_fault_tolerance_password,
                                    _this.merge(:fault_tolerance_password => fault_tolerance_password))
    end

    def fault_tolerance_sync_interval
      WebService.send_request(:i_machine_get_fault_tolerance_sync_interval, _this)
    end

    def fault_tolerance_sync_interval=(fault_tolerance_sync_interval)
      WebService.send_request(:i_machine_set_fault_tolerance_sync_interval,
                                    _this.merge(:fault_tolerance_sync_interval => fault_tolerance_sync_interval))
    end

    def rtc_use_utc
      WebService.send_request(:i_machine_get_rtc_use_utc, _this)
    end

    def rtc_use_utc=(rtc_use_utc)
      WebService.send_request(:i_machine_set_rtc_use_utc, _this.merge('RTCUseUTC' => rtc_use_utc))
    end

    def io_cache_enabled
      WebService.send_request(:i_machine_get_io_cache_enabled, _this)
    end

    def io_cache_enabled=(io_cache_enabled)
      WebService.send_request(:i_machine_set_io_cache_enabled, _this.merge('IOCacheEnabled' => io_cache_enabled))
    end

    def io_cache_size
      WebService.send_request(:i_machine_get_io_cache_size, _this)
    end

    def io_cache_size=(io_cache_size)
      WebService.send_request(:i_machine_set_io_cache_size, _this.merge('IOCacheSize' => io_cache_size))
    end

    def pci_device_assignments
      WebService.send_request(:i_machine_get_pci_device_assignments, _this)
    end

    def bandwidth_control
      bandwidth_control = WebService.send_request(:i_machine_get_bandwidth_control, _this)
      BandwidthControl.new(bandwidth_control)
    end

    def tracing_enabled
      WebService.send_request(:i_machine_get_tracing_enabled, _this)
    end

    def tracing_enabled=(tracing_enabled)
      WebService.send_request(:i_machine_set_tracing_enabled, _this.merge(:tracing_enabled => tracing_enabled))
    end

    def tracing_config
      WebService.send_request(:i_machine_get_tracing_config, _this)
    end

    def tracing_config=(tracing_config)
      WebService.send_request(:i_machine_set_tracing_config, _this.merge(:tracing_config => tracing_config))
    end

    def allow_tracing_to_access_vm
      WebService.send_request(:i_machine_get_allow_tracing_to_access_vm, _this)
    end

    def allow_tracing_to_access_vm=(allow_tracing_to_access_vm)
      WebService.send_request(:i_machine_set_allow_tracing_to_access_vm,
                                    _this.merge(:allow_tracing_to_access_vm => allow_tracing_to_access_vm))
    end

    def autostart_enabled
      WebService.send_request(:i_machine_get_autostart_enabled, _this)
    end

    def autostart_enabled=(autostart_enabled)
      WebService.send_request(:i_machine_set_autostart_enabled,
                                    _this.merge(:autostart_enabled => autostart_enabled))
    end

    def autostart_delay
      WebService.send_request(:i_machine_get_autostart_delay, _this)
    end

    def autostart_delay=(autostart_delay)
      WebService.send_request(:i_machine_set_autostart_delay, _this.merge(:autostart_delay => autostart_delay))
    end

    def autostop_type
      WebService.send_request(:i_machine_get_autostop_type, _this)
    end

    def autostop_type=(autostop_type)
      WebService.send_request(:i_machine_set_autostop_type, _this.merge(:autostop_type => autostop_type))
    end

    # Methods

    def add_storage_controller(args={})
      ensure_hash args
      storage_controller = WebService.send_request(:i_machine_add_storage_controller, _this.merge(args))
      StorageController.new(storage_controller)
    end

    def attach_device(args={})
      ensure_hash args
      args.referize! :medium
      WebService.send_request(:i_machine_attach_device, _this.merge(args))
    end

    def attach_device_without_medium(args={})
      ensure_hash args
      WebService.send_request(:i_machine_attach_device_without_medium, _this.merge(args))
    end

    def attach_host_pci_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_attach_host_pci_device, _this.merge(args))
    end

    def can_show_console_window(args={})
      ensure_hash args
      WebService.send_request(:i_machine_can_show_console_window, _this.merge(args))
    end

    def clone_to(args={})
      ensure_hash args
      args.referize! :target
      progress = WebService.send_request(:i_machine_clone_to, _this.merge(args))
      Progress.new(progress)
    end

    def create_shared_folder(args={})
      ensure_hash args
      WebService.send_request(:i_machine_create_shared_folder, _this.merge(args))
    end

    def delete(args={})
      ensure_hash args
      args.referize! :a_media
      progress = WebService.send_request(:i_machine_delete, _this.merge(args))
      Progress.new(progress)
    end

    def delete_guest_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_delete_guest_property, _this.merge(args))
    end

    def detach_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_detach_device, _this.merge(args))
    end

    def detach_host_pci_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_detach_host_pci_device, _this.merge(args))
    end

    def discard_settings(args={})
      ensure_hash args
      WebService.send_request(:i_machine_discard_settings, _this.merge(args))
    end

    def enumerate_guest_properties(args={})
      ensure_hash args
      WebService.send_request(:i_machine_enumerate_guest_properties, _this.merge(args))
    end

    def export(args={})
      ensure_hash args
      args.referize! :a_appliance
      virtual_system_description = WebService.send_request(:i_machine_export, _this.merge(args))
      VirtualSystemDescription.new(virtual_system_description)
    end

    def find_snapshot(args={})
      ensure_hash args
      snapshot = WebService.send_request(:i_machine_find_snapshot, _this.merge(args))
      Snapshot.new(snapshot)
    end

    def get_boot_order(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_boot_order, _this.merge(args))
    end

    def get_cpu_id_leaf(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_cpu_id_leaf, _this.merge(args))
    end

    def get_cpu_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_cpu_property, _this.merge(args))
    end

    def get_cpu_status(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_cpu_status, _this.merge(args))
    end

    def get_extra_data(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_extra_data, _this.merge(args))
    end

    def get_extra_data_keys(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_exrta_data_keys, _this.merge(args))
    end

    def get_guest_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_guest_property, _this.merge(args))
    end

    def get_guest_property_timestamp(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_guest_property_timestamp, _this.merge(args))
    end

    def get_guest_property_value(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_guest_property_value, _this.merge(args))
    end

    def get_hw_virt_ex_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_get_hw_virt_ex_property, _this.merge(args))
    end

    def get_medium(args={})
      ensure_hash args
      medium = WebService.send_request(:i_machine_get_medium, _this.merge(args))
      Medium.new(medium)
    end

    def get_medium_attachment(args={})
      ensure_hash args
      medium_attachment = WebService.send_request(:i_machine_get_medium_attachment, _this.merge(args))
      Medium.new(medium_attachment)
    end

    def get_medium_attachments_of_controller(args={})
      ensure_hash args
      medium_attachments_of_controller = WebService.send_request(:i_machine_get_medium_attachments_of_controller,
                                                                       _this.merge(args))
      medium_attachments_of_controller.to_a.map do |medium_attachment_of_controller|
        Medium.new(medium_attachment_of_controller)
      end
    end

    def get_network_adapter(args={})
      ensure_hash args
      network_adapter = WebService.send_request(:i_machine_get_network_adapter, _this.merge(args))
      NetworkAdapter.new(network_adapter)
    end

    def get_parallel_port(args={})
      ensure_hash args
      parallel_port = WebService.send_request(:i_machine_get_parallel_port, _this.merge(args))
      ParallelPort.new(parallel_port)
    end

    def get_serial_port(args={})
      ensure_hash args
      serial = WebService.send_request(:i_machine_get_serial_port, _this.merge(args))
      SerialPort.new(serial)
    end

    def get_storage_controller_by_instance(args={})
      ensure_hash args
      storage_controller = WebService.send_request(:i_machine_get_storage_controller_by_instance,
                                                         _this.merge(args))
      StorageController.new(storage_controller)
    end

    def get_storage_controller_by_name(args={})
      ensure_hash args
      storage_controller = WebService.send_request(:i_machine_get_storage_controller_by_name, _this.merge(args))
      StorageController.new(storage_controller)
    end

    def hot_plug_cpu(args={})
      ensure_hash args
      WebService.send_request(:i_machine_hot_plug_cpu, _this.merge(args))
    end

    def hot_unplug_cpu(args={})
      ensure_hash args
      WebService.send_request(:i_machine_hot_unplug_cpu, _this.merge(args))
    end

    def launch_vm_process(args={})
      ensure_hash args
      args.referize! :session
      progress = WebService.send_request(:i_machine_launch_vm_process, _this.merge(args))
      Progress.new(progress)
    end

    def lock_machine(args={})
      ensure_hash args
      args.referize! :session
      WebService.send_request(:i_machine_lock_machine, _this.merge(args))
    end

    def mount_medium(args={})
      ensure_hash args
      args.referize! :medium
      WebService.send_request(:i_machine_mount_medium, _this.merge(args))
    end

    def non_rotational_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_non_rotational_device, _this.merge(args))
    end

    def passthrough_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_passthrough_device, _this.merge(args))
    end

    def query_log_filename(args={})
      ensure_hash args
      WebService.send_request(:i_machine_query_log_filename, _this.merge(args))
    end

    def query_saved_guest_screen_info(args={})
      ensure_hash args
      WebService.send_request(:i_machine_query_saved_guest_screen_info, _this.merge(args))
    end

    def query_saved_screenshot_png_size(args={})
      ensure_hash args
      WebService.send_request(:i_machine_query_saved_screenshot_png_size, _this.merge(args))
    end

    def query_saved_thumbnail_size(args={})
      ensure_hash args
      WebService.send_request(:i_machine_query_saved_thumbnail_size, _this.merge(args))
    end

    def read_log(args={})
      ensure_hash args
      WebService.send_request(:i_machine_read_log, _this.merge(args))
    end

    def read_saved_screenshot_png_to_array(args={})
      ensure_hash args
      WebService.send_request(:i_machine_read_saved_screenshot_png_to_array, _this.merge(args))
    end

    def read_saved_thumbnail_png_to_array(args={})
      ensure_hash args
      WebService.send_request(:i_machine_read_saved_thumbnail_png_to_array, _this.merge(args))
    end

    def read_saved_thumbnail_to_array(args={})
      ensure_hash args
      WebService.send_request(:i_machine_read_saved_thumbnail_to_array, _this.merge(args))
    end

    def remove_all_cpuid_leaves
      WebService.send_request(:i_machine_remove_all_cpuid_leaves, _this)
    end

    def remove_cpuid_leaf(args={})
      ensure_hash args
      WebService.send_request(:i_machine_remove_cpuid_leaf, _this.merge(args))
    end

    def remove_shared_folder(args={})
      ensure_hash args
      WebService.send_request(:i_machine_remove_shared_folder, _this.merge(args))
    end

    def remove_storage_controller(args={})
      ensure_hash args
      WebService.send_request(:i_machine_remove_storage_controller, _this.merge(args))
    end

    def save_settings
      WebService.send_request(:i_machine_save_settings, _this)
    end

    def set_auto_discard_for_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_auto_discard_for_device, _this.merge(args))
    end

    def set_bandwidth_group_for_device(args={})
      ensure_hash args
      args.referize! :bandwidth_group
      WebService.send_request(:i_machine_set_bandwidth_group_for_device, _this.merge(args))
    end

    def set_boot_order(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_boot_order, _this.merge(args))
    end

    def set_cpuid_leaf(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_cpuid_leaf, _this.merge(args))
    end

    def set_cpu_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_cpu_property, _this.merge(args))
    end

    def set_extra_data(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_extra_data, _this.merge(args))
    end

    def set_guest_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_guest_property, _this.merge(args))
    end

    def set_guest_property_value(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_guest_property_value, _this.merge(args))
    end

    def set_hw_virt_ex_property(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_hw_virt_ex_property, _this.merge(args))
    end

    def set_no_bandwidth_group_for_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_no_bandwidth_group_for_device, _this.merge(args))
    end

    def set_storage_controller_bootable(args={})
      ensure_hash args
      WebService.send_request(:i_machine_set_storage_controller_bootable, _this.merge(args))
    end

    def show_console_window
      WebService.send_request(:i_machine_show_console_window, _this.merge)
    end

    def temporary_eject_device(args={})
      ensure_hash args
      WebService.send_request(:i_machine_temporary_eject_device, _this.merge(args))
    end

    def umnount_medium(args={})
      ensure_hash args
      WebService.send_request(:i_machine_umount_medium, _this.merge(args))
    end

    def unregister(args={})
      ensure_hash args
      media = WebService.send_request(:i_machine_unregister, _this.merge(args))
      media.to_a.map do |medium|
        Medium.new(medium)
      end
    end
  end
end
