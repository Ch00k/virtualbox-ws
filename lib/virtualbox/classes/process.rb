module VBox
  class Process < Base

    vb_attr :arguments, :force_array => true
    vb_attr :environment, :force_array => true
    vb_attr :event_source
    vb_attr :executable_path
    vb_attr :exit_code
    vb_attr :name
    vb_attr :pid
    vb_attr :status

    vb_method :read, :force_array => true
    vb_method :terminate
    vb_method :wait_for
    vb_method :wait_for_array
    vb_method :write
    vb_method :write_array

  end
end
