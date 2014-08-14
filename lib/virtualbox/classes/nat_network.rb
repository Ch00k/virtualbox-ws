module VBox
  class NATNetwork < Base

    vb_attr :network_name
    vb_attr :enabled
    vb_attr :network
    vb_attr :gateway
    vb_attr :ipv6_enabled, :force_tag => 'IPv6Enabled', :force_savon_method => :i_pv6_enabled
    vb_attr :ipv6_prefix, :force_tag => 'IPv6Prefix', :force_savon_method => :i_pv6_prefix
    vb_attr :advertise_default_ipv6_route_enabled, :force_tag => 'advertiseDefaultIPv6RouteEnabled',
            :force_savon_method => :advertise_default_i_pv6_route_enabled
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