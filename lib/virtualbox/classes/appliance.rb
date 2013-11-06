module VBox
  class Appliance < Base

    vb_attr :path
    vb_attr :disks, :force_array => true
    vb_attr :virtual_system_descriptions, :force_array => true
    vb_attr :machines, :force_array => true

    vb_method :create_vfs_explorer
    vb_method :get_warnings, :force_array => true
    vb_method :import_machines
    vb_method :interpret
    vb_method :read
    vb_method :write
  end
end
