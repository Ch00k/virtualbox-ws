module VBox
  class NATNetwork < Base

    starts_with_acronym

    vb_attr :network_name
    vb_attr :enabled
    vb_attr :network
    vb_attr :gateway
    vb_attr :ipv6_enabled, :force_tag => 'IPv6Enabled'
    vb_attr :ipv6_prefix, :force_tag => 'IPv6Prefix'
    vb_attr :advertise_default_ipv6_route_enabled, :force_tag => 'advertiseDefaultIPv6RouteEnabled'
    vb_attr :need_dhcp_server
    vb_attr :event_source
    vb_attr :port_forward_rules4
    vb_attr :local_mappings
    vb_attr :loopback_ip6
    vb_attr :port_forward_rules6

    vb_method :add_local_mapping
    vb_method :add_port_forward_rule
    vb_method :remove_port_forward_rule
    vb_method :start
    vb_method :stop

  end
end