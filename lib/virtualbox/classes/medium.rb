module VBox
  class Medium < Base

    # Attributes

    def id
      WebService.send_request(:i_medium_get_id, _this)
    end

    def description
      WebService.send_request(:i_medium_get_description, _this)
    end

    def description=(description)
      WebService.send_request(:i_medium_set_description, _this.merge(:description => description))
    end

    def state
      WebService.send_request(:i_medium_get_state, _this)
    end

    def variant
      WebService.send_request(:i_medium_get_variant, _this)
    end

    def location
      WebService.send_request(:i_medium_get_location, _this)
    end

    def location=(location)
      WebService.send_request(:i_medium_set_location, _this.merge(:location => location))
    end

    def name
      WebService.send_request(:i_medium_get_name, _this)
    end

    def device_type
      WebService.send_request(:i_medium_get_device_type, _this)
    end

    def host_drive
      WebService.send_request(:i_medium_get_host_drive, _this)
    end

    def size
      WebService.send_request(:i_medium_get_size, _this)
    end

    def format
      WebService.send_request(:i_medium_get_format, _this)
    end

    def medium_format
      medium_format = WebService.send_request(:i_medium_get_medium_format, _this)
      MediumFormat.new(medium_format)
    end

    def type
      WebService.send_request(:i_medium_get_type, _this)
    end

    def type=(type)
      WebService.send_request(:i_medium_set_type, _this.merge(:type => type))
    end

    def allowed_types
      WebService.send_request(:i_medium_get_allowed_types, _this)
    end

    def parent
      parent = WebService.send_request(:i_medium_get_parent, _this)
      Medium.new(parent)
    end

    def children
      children = WebService.send_request(:i_medium_get_children, _this)
      children.map do |child|
        Medium.new(child)
      end
    end

    def base
      base = WebService.send_request(:i_medium_get_base, _this)
      Medium.new(base)
    end

    def read_only
      WebService.send_request(:i_medium_get_read_only, _this)
    end

    def logical_size
      WebService.send_request(:i_medium_get_logical_size, _this)
    end

    def auto_reset
      WebService.send_request(:i_medium_get_auto_reset, _this)
    end

    def auto_reset=(auto_reset)
      WebService.send_request(:i_medium_set_auto_reset, _this.merge(:auto_reset => auto_reset))
    end

    def last_access_error
      WebService.send_request(:i_medium_get_last_access_error, _this)
    end

    def machine_ids
      WebService.send_request(:i_medium_get_machine_ids, _this)
    end

    # Methods

    def clone_to(args={})
      ensure_hash args
      args.referize! :target, :parent
      WebService.send_request(:i_medium_clone_to, _this.merge(args))
    end

    def clone_to_base(args={})
      ensure_hash args
      args.referize! :target
      WebService.send_request(:i_medium_clone_to_base, _this.merge(args))
    end

    def close
      WebService.send_request(:i_medium_close, _this)
    end

    def compact
      progress = WebService.send_request(:i_medium_close, _this)
      Progress.new(progress)
    end

    def create_base_storage(args={})
      ensure_hash args
      progress = WebService.send_request(:i_medium_create_base_storage, _this.merge(args))
      Progress.new(progress)
    end

    def create_diff_storage(args={})
      ensure_hash args
      args.referize! :target
      progress = WebService.send_request(:i_medium_create_diff_storage, _this.merge(args))
      Progress.new(progress)
    end

    def delete_storage
      progress = WebService.send_request(:i_medium_delete_storage, _this)
      Progress.new(progress)
    end

    def get_properties(args={})
      ensure_hash args
      WebService.send_request(:i_medium_get_properties, _this.merge(args))
    end

    def get_property(args={})
      ensure_hash args
      WebService.send_request(:i_medium_get_property, _this.merge(args))
    end

    def get_snapshot_ids(args={})
      ensure_hash args
      WebService.send_request(:i_medium_get_snapshot_ids, _this.merge(args))
    end

    def lock_read
      WebService.send_request(:i_medium_lock_read, _this.merge(args))
    end

    def lock_write
      WebService.send_request(:i_medium_lock_write, _this.merge(args))
    end

    def merge_to(args={})
      ensure_hash args
      args.referize! :target
      progress = WebService.send_request(:i_medium_delete_storage, _this.merge(args))
      Progress.new(progress)
    end

    def refresh_state
      WebService.send_request(:i_medium_refresh_state, _this)
    end

    def reset
      progress = WebService.send_request(:i_medium_reset, _this)
      Progress.new(progress)
    end

    def resize(args={})
      ensure_hash args
      progress = WebService.send_request(:i_medium_resize, _this.merge(args))
      Progress.new(progress)
    end

    def set_ids(args={})
      ensure_hash args
      WebService.send_request(:i_medium_set_ids, _this.merge(args))
    end

    def set_properties(args={})
      ensure_hash args
      WebService.send_request(:i_medium_set_properties, _this.merge(args))
    end

    def set_property(args={})
      ensure_hash args
      WebService.send_request(:i_medium_set_property, _this.merge(args))
    end

    def unlock_read
      WebService.send_request(:i_medium_unlock_read, _this.merge(args))
    end

    def unlock_write
      WebService.send_request(:i_medium_unlock_write, _this.merge(args))
    end
  end
end
