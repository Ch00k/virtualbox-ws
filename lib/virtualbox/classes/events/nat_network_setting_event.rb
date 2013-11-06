module VBox
  class NATNetworkSettingEvent < NATNetworkAlterEvent

    starts_with_acronym

    vb_attr :enabled
    vb_attr :network
    vb_attr :gateway
    vb_attr :advertise_default_ipv6_route_enabled
    vb_attr :need_dhcp_server

  end
end