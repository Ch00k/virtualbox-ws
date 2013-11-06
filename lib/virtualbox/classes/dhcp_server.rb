module VBox
  class DHCPServer < Base

    starts_with_acronym

    vb_attr :event_source
    vb_attr :enabled
    vb_attr :ip_address
    vb_attr :network_mask
    vb_attr :network_name
    vb_attr :lower_ip
    vb_attr :upper_ip
    vb_attr :global_options
    vb_attr :vm_configs

    vb_method :add_global_option
    vb_method :add_vm_slot_option
    vb_method :get_mac_options
    vb_method :get_vm_slot_options
    vb_method :remove_vm_slot_options
    vb_method :set_configuration
    vb_method :start
    vb_method :stop

  end
end
