module VBox
  class NATNetworkPortForwardEvent < NATNetworkAlterEvent

    starts_with_acronym

    vb_attr :create
    vb_attr :ipv6
    vb_attr :name
    vb_attr :proto
    vb_attr :host_ip
    vb_attr :host_port
    vb_attr :guest_ip
    vb_attr :guest_port

  end
end
