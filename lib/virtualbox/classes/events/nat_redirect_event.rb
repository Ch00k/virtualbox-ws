module VBox
  class NATRedirectEvent < MachineEvent

    starts_with_acronym

    vb_attr :slot
    vb_attr :remove
    vb_attr :name
    vb_attr :proto
    vb_attr :host_ip
    vb_attr :host_port
    vb_attr :guest_ip
    vb_attr :guest_port

  end
end