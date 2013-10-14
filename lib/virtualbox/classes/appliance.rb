module VBox
  class Appliance < Base

    # Attributes

    def path
      VBox::WebService.send_request(:i_appliance_get_path, _this)
    end

    def disks
      VBox::WebService.send_request(:i_appliance_get_disks, _this.merge)
    end

    def virtual_system_descriptions
      virtual_system_descriptions = VBox::WebService.send_request(:i_appliance_get_virtual_system_descriptions, _this)
      virtual_system_descriptions.map do |virtual_system_description|
        VBox::VirtualSystemDescription.new(virtual_system_description)
      end
    end

    def machines
      VBox::WebService.send_request(:i_appliance_get_machines, _this.merge)
    end

    # Methods

    def create_vfs_explorer(args={})
      ensure_hash(args)
      vfs_explorer = VBox::WebService.send_request(:i_appliance_create_vfs_explorer, _this.merge(args))
      VBox::VFSExplorer.new(vfs_explorer)
    end

    def interpret
      VBox::WebService.send_request(:i_appliance_interpret, _this)
    end

    def read(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_appliance_read, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def write(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_appliance_write, _this.merge(args))
      VBox::Progress.new(progress)
    end
  end
end
