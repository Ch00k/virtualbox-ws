module VBox
  class Medium < Base

    # Attributes

    def id
      VBox::WebService.send_request(:i_medium_get_id, _this)
    end

    def description
      VBox::WebService.send_request(:i_medium_get_description, _this)
    end

    def description=(description)
      VBox::WebService.send_request(:i_medium_set_description, _this.merge(:description => description))
    end

    def state
      VBox::WebService.send_request(:i_medium_get_state, _this)
    end

    def variant
      VBox::WebService.send_request(:i_medium_get_variant, _this)
    end

    def location
      VBox::WebService.send_request(:i_medium_get_location, _this)
    end

    def location=(location)
      VBox::WebService.send_request(:i_medium_set_location, _this.merge(:location => location))
    end

    def name
      VBox::WebService.send_request(:i_medium_get_name, _this)
    end

    def device_type
      VBox::WebService.send_request(:i_medium_get_device_type, _this)
    end

    def host_drive
      VBox::WebService.send_request(:i_medium_get_host_drive, _this)
    end

    def size
      VBox::WebService.send_request(:i_medium_get_size, _this)
    end

    def format
      VBox::WebService.send_request(:i_medium_get_format, _this)
    end

    def medium_format
      medium_format = VBox::WebService.send_request(:i_medium_get_medium_format, _this)
      VBox::MediumFormat.new(medium_format)
    end

    def type
      VBox::WebService.send_request(:i_medium_get_type, _this)
    end

    def type=(type)
      VBox::WebService.send_request(:i_medium_set_type, _this.merge(:type => type))
    end

    def allowed_types
      VBox::WebService.send_request(:i_medium_get_allowed_types, _this)
    end

    def parent
      parent = VBox::WebService.send_request(:i_medium_get_parent, _this)
      VBox::Medium.new(parent)
    end

    def children
      children = VBox::WebService.send_request(:i_medium_get_children, _this)
      children.map do |child|
        VBox::Medium.new(child)
      end
    end

    def base
      base = VBox::WebService.send_request(:i_medium_get_base, _this)
      VBox::Medium.new(base)
    end

    def read_only
      VBox::WebService.send_request(:i_medium_get_read_only, _this)
    end

    def logical_size
      VBox::WebService.send_request(:i_medium_get_logical_size, _this)
    end

    def auto_reset
      VBox::WebService.send_request(:i_medium_get_auto_reset, _this)
    end

    def auto_reset=(auto_reset)
      VBox::WebService.send_request(:i_medium_set_auto_reset, _this.merge(:auto_reset => auto_reset))
    end

    def last_access_error
      VBox::WebService.send_request(:i_medium_get_last_access_error, _this)
    end

    def machine_ids
      VBox::WebService.send_request(:i_medium_get_machine_ids, _this)
    end

    # Methods

    def clone_to(args={})
      ensure_hash(args)
      args[:target] = args[:target].ref if args.has_key?(:target) & args[:target].respond_to?(:ref)
      args[:parent] = args[:parent].ref if args.has_key?(:parent) & args[:parent].respond_to?(:ref)
      VBox::WebService.send_request(:i_medium_clone_to, _this.merge(args))
    end

    def clone_to_base(args={})
      ensure_hash(args)
      args[:target] = args[:target].ref if args.has_key?(:target) & args[:target].respond_to?(:ref)
      VBox::WebService.send_request(:i_medium_clone_to_base, _this.merge(args))
    end

    def close
      VBox::WebService.send_request(:i_medium_close, _this)
    end

    def compact
      progress = VBox::WebService.send_request(:i_medium_close, _this)
      VBox::Progress.new(progress)
    end

    def create_base_storage(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_medium_create_base_storage, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def create_diff_storage(args={})
      ensure_hash(args)
      args[:target] = args[:target].ref if args.has_key?(:target) & args[:target].respond_to?(:ref)
      progress = VBox::WebService.send_request(:i_medium_create_diff_storage, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def delete_storage
      progress = VBox::WebService.send_request(:i_medium_delete_storage, _this)
      VBox::Progress.new(progress)
    end

    def get_properties(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_medium_get_properties, _this.merge(args))
    end

    def get_property(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_medium_get_property, _this.merge(args))
    end

    def get_snapshot_ids(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_medium_get_snapshot_ids, _this.merge(args))
    end

    def lock_read
      VBox::WebService.send_request(:i_medium_lock_read, _this.merge(args))
    end

    def lock_write
      VBox::WebService.send_request(:i_medium_lock_write, _this.merge(args))
    end

    def merge_to(args={})
      ensure_hash(args)
      args[:target] = args[:target].ref if args.has_key?(:target) & args[:target].respond_to?(:ref)
      progress = VBox::WebService.send_request(:i_medium_delete_storage, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def refresh_state
      VBox::WebService.send_request(:i_medium_refresh_state, _this)
    end

    def reset
      progress = VBox::WebService.send_request(:i_medium_reset, _this)
      VBox::Progress.new(progress)
    end

    def resize(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_medium_resize, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def set_ids(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_medium_set_ids, _this.merge(args))
    end

    def set_properties(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_medium_set_properties, _this.merge(args))
    end

    def set_property(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_medium_set_property, _this.merge(args))
    end

    def unlock_read
      VBox::WebService.send_request(:i_medium_unlock_read, _this.merge(args))
    end

    def unlock_write
      VBox::WebService.send_request(:i_medium_unlock_write, _this.merge(args))
    end
  end
end
