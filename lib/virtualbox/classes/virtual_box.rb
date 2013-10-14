module VBox
  class VirtualBox < Base

    # Attributes

    def version
      VBox::WebService.send_request(:i_virtual_box_get_version, _this)
    end

    def version_normalized
      VBox::WebService.send_request(:i_virtual_box_get_version_normalized, _this)
    end

    def revision
      VBox::WebService.send_request(:i_virtual_box_get_revision, _this)
    end

    def package_type
      VBox::WebService.send_request(:i_virtual_box_get_package_type, _this)
    end

    def api_version
      VBox::WebService.send_request(:i_virtual_box_get_api_version, _this)
    end

    def home_folder
      VBox::WebService.send_request(:i_virtual_box_get_home_folder, _this)
    end

    def settings_file_path
      VBox::WebService.send_request(:i_virtual_box_get_settings_file_path, _this)
    end

    def host
      host = VBox::WebService.send_request(:i_virtual_box_get_host, _this)
      VBox::Host.new(host)
    end

    def system_properties
      system_properties = VBox::WebService.send_request(:i_virtual_box_get_system_properties, _this)
      VBox::SystemProperties.new(system_properties)
    end

    def machines
      machines = VBox::WebService.send_request(:i_virtual_box_get_machines, _this)
      machines.to_a.map do |machine|
        VBox::Machine.new(machine)
      end
    end

    def machine_groups
      VBox::WebService.send_request(:i_virtual_box_get_machine_groups, _this)
    end

    def hard_disks
      hard_disks = VBox::WebService.send_request(:i_virtual_box_get_hard_disks, _this)
      hard_disks.to_a.map do |hard_disk|
        VBox::Medium.new(hard_disk)
      end
    end

    def dvd_images
      dvd_images = VBox::WebService.send_request(:i_virtual_box_get_dvd_images, _this)
      dvd_images.to_a.map do |dvd_image|
        VBox::Medium.new(dvd_image)
      end
    end

    def floppy_images
      floppy_images = VBox::WebService.send_request(:i_virtual_box_get_floppy_images, _this)
      floppy_images.to_a.map do |floppy_image|
        VBox::Medium.new(floppy_image)
      end
    end

    def progress_operations
      progress_operations = VBox::WebService.send_request(:i_virtual_box_get_progress_operations, _this)
      progress_operations.to_a.map do |progress_operation|
        VBox::Progress.new(progress_operation)
      end
    end

    def guest_os_types
      VBox::WebService.send_request(:i_virtual_box_get_guest_os_types, _this)
    end

    def shared_folders
      shared_folders = VBox::WebService.send_request(:i_virtual_box_get_shared_folders, _this)
      shared_folders.to_a.map do |shared_folder|
        VBox::SharedFolder.new(shared_folder)
      end
    end

    def performance_collector
      performance_collector = VBox::WebService.send_request(:i_virtual_box_get_performance_collector, _this)
      VBox::PerformanceCollector.new(performance_collector)
    end

    def dhcp_servers
      dhcp_servers = VBox::WebService.send_request(:i_virtual_box_get_dhcp_server, _this)
      dhcp_servers.to_a.map do |dhcp_server|
        VBox::DHCPServer.new(dhcp_server)
      end
    end

    def event_source
      event_source = VBox::WebService.send_request(:i_virtual_box_get_event_source, _this)
      VBox::EventSource.new(event_source)
    end

    def internal_networks
      VBox::WebService.send_request(:i_virtual_box_get_internal_networks, _this)
    end

    def generic_network_drivers
      VBox::WebService.send_request(:i_virtual_box_get_generic_network_drivers, _this)
    end

    # Methods

    def check_firmware_present(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_check_firmware_present, _this.merge(args))
    end

    def compose_machine_filename(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_compose_machine_filename, _this.merge(args))
    end

    def create_appliance
      appliance = VBox::WebService.send_request(:i_virtual_box_create_appliance, _this)
      VBox::Appliance.new(appliance)
    end

    def create_dhcp_server(args={})
      ensure_hash(args)
      dhcp_server = VBox::WebService.send_request(:i_virtual_box_create_dhcp_server, _this.merge(args))
      VBox::DHCPServer.new(dhcp_server)
    end

    def create_hard_disk(args={})
      ensure_hash(args)
      hard_disk = VBox::WebService.send_request(:i_virtual_box_create_hard_disk, _this.merge(args))
      VBox::Medium.new(hard_disk)
    end

    def create_machine(args={})
      ensure_hash(args)
      machine = VBox::WebService.send_request(:i_virtual_box_create_machine, _this.merge(args))
      VBox::Machine.new(machine)
    end

    def create_shared_folder(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_create_shared_folder, _this.merge(args))
    end

    def find_dhcp_server_by_network_name(args={})
      ensure_hash(args)
      dhcp_server = VBox::WebService.send_request(:i_virtual_box_find_dhcp_server_by_network_name, _this.merge(args))
      VBox::DHCPServer.new(dhcp_server)
    end

    def find_machine(args={})
      ensure_hash(args)
      machine = VBox::WebService.send_request(:i_virtual_box_find_machine, _this.merge(args))
      VBox::Machine.new(machine)
    end

    def get_extra_data(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_get_extra_data, _this.merge(args))
    end

    def get_extra_data_keys
      VBox::WebService.send_request(:i_virtual_box_get_extra_data_keys, _this)
    end

    def get_guest_os_type(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_get_guest_os_type, _this.merge(args))
    end

    def get_machine_states(args={})
      ensure_hash(args)
      if args.has_key?(:machines)
        args[:machines].map! do |machine|
          machine.ref
        end
      end
      VBox::WebService.send_request(:i_virtual_box_get_machine_states, _this.merge(args))
    end

    def get_machines_by_groups(args={})
      ensure_hash(args)
      machines = VBox::WebService.send_request(:i_virtual_box_get_machines_by_groups, _this.merge(args))
      machines.to_a.map do |machine|
        VBox::Machine.new(machine)
      end
    end

    def open_machine(args={})
      ensure_hash(args)
      machine = VBox::WebService.send_request(:i_virtual_box_open_machine, _this.merge(args))
      VBox::Machine.new(machine)
    end

    def open_medium
      medium = VBox::WebService.send_request(:i_virtual_box_open_medium, _this.merge(args))
      VBox::Medium.new(medium)
    end

    def register_machine(args={})
      ensure_hash(args)
      args[:machine] = args[:machine].ref
      VBox::WebService.send_request(:i_virtual_box_register_machine, _this.merge(args))
    end

    def remove_dhcp_server(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_remove_dhcp_server, _this.merge(args))
    end

    def remove_shared_folder(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_remove_shared_folder, _this.merge(args))
    end

    def set_extra_data(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_set_extra_data, _this.merge(args))
    end

    def set_settings_secret(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_virtual_box_set_settings_secret, _this.merge(args))
    end
  end
end
