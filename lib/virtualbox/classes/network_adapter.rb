module VBox
  class NetworkAdapter < Base

    vb_attr :adapter_type
    vb_attr :slot
    vb_attr :enabled
    vb_attr :mac_address, :force_tag => 'MACAddress'
    vb_attr :attachment_type
    vb_attr :bridged_interface
    vb_attr :host_only_interface
    vb_attr :internal_network
    vb_attr :nat_network, :force_tag => 'NATNetwork'
    vb_attr :generic_driver
    vb_attr :cable_connected
    vb_attr :line_speed
    vb_attr :promisc_mode_policy
    vb_attr :trace_enabled
    vb_attr :trace_file
    vb_attr :nat_engine
    vb_attr :boot_priority
    vb_attr :bandwidth_group

    vb_method :get_properties, :force_array => true
    vb_method :get_property
    vb_method :set_property

  end
end
