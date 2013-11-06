module VBox
  class SharedFolder < Base

    vb_attr :name
    vb_attr :host_path
    vb_attr :accessible
    vb_attr :writable
    vb_attr :automount
    vb_attr :last_access_error

  end
end
