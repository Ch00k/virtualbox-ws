module VBox
  class File < Base

    vb_attr :creation_mode
    vb_attr :disposition
    vb_attr :event_source
    vb_attr :file_name
    vb_attr :id
    vb_attr :initial_size
    vb_attr :open_mode
    vb_attr :offset
    vb_attr :status

    vb_method :close
    vb_method :query_info
    vb_method :read
    vb_method :read_at
    vb_method :seek
    vb_method :set_acl
    vb_method :write
    vb_method :write_at

  end
end