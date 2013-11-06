module VBox
  class Host < Base

    vb_attr :dvd_drives, :force_array => true
    vb_attr :floppy_drives, :force_array => true
    vb_attr :usb_devices, :force_array => true
    vb_attr :usb_device_filters, :force_array => true
    vb_attr :network_interfaces, :force_array => true
    vb_attr :name_servers, :force_array => true
    vb_attr :domain_name
    vb_attr :search_strings, :force_array => true
    vb_attr :processor_count
    vb_attr :processor_online_count
    vb_attr :processor_core_count
    vb_attr :processor_online_core_count
    vb_attr :memory_size
    vb_attr :memory_available
    vb_attr :operating_system
    vb_attr :os_version
    vb_attr :utc_time
    vb_attr :acceleration_3d_available
    vb_attr :video_input_devices

    vb_method :create_host_only_network_interface
    vb_method :create_usb_device_filter
    vb_method :find_host_dvd_drive
    vb_method :find_host_floppy_drive
    vb_method :find_host_network_interface_by_id
    vb_method :find_host_network_interface_by_name
    vb_method :find_host_network_interfaces_of_type, :force_array => true
    vb_method :find_usb_device_by_address
    vb_method :find_usb_device_by_id
    vb_method :generate_mac_address
    vb_method :get_processor_cpuid_leaf
    vb_method :get_processor_description
    vb_method :get_processor_feature
    vb_method :get_processor_speed
    vb_method :insert_usb_device_filter
    vb_method :remove_host_only_network_interface
    vb_method :remove_usb_device_filter

  end
end
