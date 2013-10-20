module VBox
  class Appliance < Base

    # Attributes

    def path
      WebService.send_request(:i_appliance_get_path, _this)
    end

    def disks
      WebService.send_request(:i_appliance_get_disks, _this.merge)
    end

    def virtual_system_descriptions
      virtual_system_descriptions = WebService.send_request(:i_appliance_get_virtual_system_descriptions, _this)
      virtual_system_descriptions.map do |virtual_system_description|
        VirtualSystemDescription.new(virtual_system_description)
      end
    end

    def machines
      WebService.send_request(:i_appliance_get_machines, _this.merge)
    end

    # Methods

    def create_vfs_explorer(args={})
      ensure_hash args
      vfs_explorer = WebService.send_request(:i_appliance_create_vfs_explorer, _this.merge(args))
      VFSExplorer.new(vfs_explorer)
    end

    def interpret
      WebService.send_request(:i_appliance_interpret, _this)
    end

    def read(args={})
      ensure_hash args
      progress = WebService.send_request(:i_appliance_read, _this.merge(args))
      Progress.new(progress)
    end

    def write(args={})
      ensure_hash args
      progress = WebService.send_request(:i_appliance_write, _this.merge(args))
      Progress.new(progress)
    end
  end
end
