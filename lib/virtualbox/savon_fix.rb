module VBox
  module WebService

    BROKEN_TAGS = {
        :i_bios_settings_set_acpi_enabled                       => 'ACPIEnabled',
        :i_bios_settings_set_ioapic_enabled                     => 'IOAPICEnabled',
        :i_bios_settings_set_pxe_debug_enabled                  => 'PXEDebugEnabled',
        :i_machine_set_os_type_id                               => 'OSTypeId',
        :i_machine_set_cpu_count                                => 'CPUCount',
        :i_machine_set_cpu_hot_plug_enabled                     => 'CPUHotPlugEnabled',
        :i_machine_set_cpu_execution_cap                        => 'CPUExecutionCap',
        :i_machine_set_vram_size                                => 'VRAMSize',
        :i_machine_set_hpet_enabled                             => 'HPETEnabled',
        :i_machine_set_rtc_use_utc                              => 'RTCUseUTC',
        :i_machine_set_io_cache_enabled                         => 'IOCacheEnabled',
        :i_machine_set_io_cache_size                            => 'IOCacheSize',
        :i_machine_debugger_set_patm_enabled                    => 'PATMEnabled',
        :i_machine_debugger_set_csam_enabled                    => 'CSAMEnabled',
        :i_nat_engine_set_tftp_prefix                           => 'TFTPPrefix',
        :i_nat_engine_set_tftp_boot_file                        => 'TFTPBootFile',
        :i_nat_engine_set_tftp_next_server                      => 'TFTPNextServer',
        :i_nat_engine_set_dns_pass_domain                       => 'DNSPassDomain',
        :i_nat_engine_set_dns_proxy                             => 'DNSProxy',
        :i_nat_engine_set_dns_use_host_resolver                 => 'DNSUseHostResolver',
        :i_nat_network_set_ipv6_enabled                         => 'IPv6Enabled',
        :i_nat_network_set_ipv6_prefix                          => 'IPv6Prefix',
        :i_nat_network_set_advertise_default_ipv6_route_enabled => 'advertiseDefaultIPv6RouteEnabled',
        :i_network_adapter_set_mac_address                      => 'MACAddress',
        :i_network_adapter_set_nat_network                      => 'NATNetwork',
        :i_parallel_port_set_io_base                            => 'IOBase',
        :i_serial_port_set_io_base                              => 'IOBase',
        :i_system_properties_set_vrde_aurh_library              => 'VRDEAuthLibrary',
        :i_vrde_server_set_vrde_ext_pack                        => 'VRDEExtPack',
    }

    BROKEN_ARRAYS = [
        :i_appliance_get_disks,
        :i_appliance_get_virtual_system_descriptions,
        :i_appliance_get_machines,
        :i_appliance_get_warnings,
        :i_bandwidth_control_get_all_bandwidth_groups,
        :i_console_get_usb_devices,
        :i_console_get_remote_usb_devices,
        :i_console_get_shared_folders,
        :i_guest_file_read_event_get_data,
        :i_guest_multi_touch_event_get_x_positions,
        :i_guest_multi_touch_event_get_y_positions,
        :i_guest_multi_touch_event_get_contact_ids,
        :i_guest_multi_touch_event_get_contact_flags,
        :i_guest_process_output_event_get_data,
        :i_veto_event_get_vetos,
        :i_guest_get_sessions,
        :i_guest_session_get_processes,
        :i_guest_session_get_directories,
        :i_guest_session_get_files,
        :i_host_get_dvd_drives,
        :i_host_get_floppy_drives,
        :i_host_get_usb_devices,
        :i_host_get_usb_device_filters,
        :i_host_get_network_interfaces,
        :i_host_get_name_servers,
        :i_host_get_search_strings,
        :i_host_find_host_network_interfaces_of_type,
        :i_machine_get_groups,
        :i_machine_get_video_capture_screens,
        :i_machine_get_usb_controllers,
        :i_machine_get_usb_device_filter,
        :i_machine_get_storage_controllers,
        :i_machine_get_shared_folders,
        :i_machine_get_extra_data_keys,
        :i_machine_unregister,
        :i_medium_get_allowed_types,
        :i_medium_get_children,
        :i_medium_get_machine_ids,
        :i_medium_get_properties,
        :i_medium_get_snapshot_ids,
        :i_medium_format_get_capabilities,
        :i_network_adapter_get_properties,
        :i_performance_collector_disable_metrics,
        :i_performance_collector_enable_metrics,
        :i_performance_collector_get_metrics,
        :i_performance_collector_query_metics_data,
        :i_performance_collector_setup_metrics,
        :i_process_get_arguments,
        :i_process_get_environment,
        :i_process_read,
        :i_system_properties_get_medium_formats,
        :i_system_properties_get_device_types_for_storage_bus,
        :i_virtual_box_get_machines,
        :i_virtual_box_get_machine_groups,
        :i_virtual_box_get_hard_disks,
        :i_virtual_box_get_dvd_images,
        :i_virtual_box_get_floppy_images,
        :i_virtual_box_get_progress_operations,
        :i_virtual_box_get_shared_folders,
        :i_virtual_box_get_dhcp_servers,
        :i_virtual_box_get_nat_networks,
        :i_virtual_box_get_internal_networks,
        :i_virtual_box_get_generic_network_drivers,
        :i_virtual_box_get_extra_data_keys,
        :i_virtual_box_get_machine_states,
        :i_virtual_box_get_machines_by_groups
    ]

  end
end