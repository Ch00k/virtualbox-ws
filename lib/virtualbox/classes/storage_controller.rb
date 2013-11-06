module VBox
  class StorageController < Base

    vb_attr :name
    vb_attr :max_devices_per_port_count
    vb_attr :min_port_count
    vb_attr :max_port_count
    vb_attr :instance
    vb_attr :port_count
    vb_attr :bus
    vb_attr :controller_type
    vb_attr :use_host_io_cache
    vb_attr :bootable

  end
end
