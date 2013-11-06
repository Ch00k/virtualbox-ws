module VBox
  class Medium < Base

    vb_attr :id
    vb_attr :description
    vb_attr :state
    vb_attr :variant
    vb_attr :location
    vb_attr :name
    vb_attr :device_type
    vb_attr :host_drive
    vb_attr :size
    vb_attr :format
    vb_attr :medium_format
    vb_attr :type
    vb_attr :allowed_types, :force_array => true
    vb_attr :parent
    vb_attr :children, :force_array => true
    vb_attr :base
    vb_attr :read_only
    vb_attr :logical_size
    vb_attr :auto_reset
    vb_attr :last_access_error
    vb_attr :machine_ids, :force_array => true

    vb_method :clone_to
    vb_method :clone_to_base
    vb_method :close
    vb_method :compact
    vb_method :create_base_storage
    vb_method :create_diff_storage
    vb_method :delete_storage
    vb_method :get_properties, :force_array => true
    vb_method :get_property
    vb_method :get_snapshot_ids, :force_array => true
    vb_method :lock_read
    vb_method :lock_write
    vb_method :merge_to
    vb_method :refresh_state
    vb_method :reset
    vb_method :resize
    vb_method :set_ids
    vb_method :set_location
    vb_method :set_properties
    vb_method :set_property

  end
end
