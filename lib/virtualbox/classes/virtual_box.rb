module VBox
  class VirtualBox < Base

    vb_attr :version
    vb_attr :version_normalized
    vb_attr :revision
    vb_attr :package_type
    vb_attr :api_version
    vb_attr :home_folder
    vb_attr :settings_file_path
    vb_attr :host
    vb_attr :system_properties
    vb_attr :machines, :force_array => true
    vb_attr :machine_groups, :force_array => true
    vb_attr :hard_disks, :force_array => true
    vb_attr :dvd_images, :force_array => true
    vb_attr :floppy_images, :force_array => true
    vb_attr :progress_operations, :force_array => true
    vb_attr :guest_os_types
    vb_attr :shared_folders, :force_array => true
    vb_attr :performance_collector
    vb_attr :dhcp_servers, :force_array => true
    vb_attr :nat_networks, :force_array => true
    vb_attr :event_source
    vb_attr :internal_networks, :force_array => true
    vb_attr :generic_network_drivers, :force_array => true

    vb_method :check_firmware_present
    vb_method :compose_machine_filename
    vb_method :create_appliance
    vb_method :create_dhcp_server
    vb_method :create_hard_disk
    vb_method :create_machine
    vb_method :create_nat_network
    vb_method :create_shared_folder
    vb_method :find_dhcp_server_by_network_name
    vb_method :find_machine
    vb_method :find_nat_network_by_name
    vb_method :get_extra_data
    vb_method :get_extra_data_keys, :force_array => true
    vb_method :get_guest_os_type
    vb_method :get_machine_states, :force_array => true
    vb_method :get_machines_by_groups, :force_array => true
    vb_method :open_machine
    vb_method :open_medium
    vb_method :register_machine
    vb_method :remove_dhcp_server
    vb_method :remove_nat_network
    vb_method :remove_shared_folder
    vb_method :set_extra_data
    vb_method :remove_settings_secret

  end
end
