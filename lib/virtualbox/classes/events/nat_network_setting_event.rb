module VBox
  class NATNetworkSettingEvent < NATNetworkAlterEvent

    vb_attr :enabled
    vb_attr :network
    vb_attr :gateway
    vb_attr :advertise_default_ipv6_route_enabled, :force_savon_method => :advertise_default_i_pv6_route_enabled
    vb_attr :need_dhcp_server

  end
end