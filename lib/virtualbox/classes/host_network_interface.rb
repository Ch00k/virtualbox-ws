module VBox
  class HostNetworkInterface < Base

    vb_attr :name
    vb_attr :short_name
    vb_attr :id
    vb_attr :network_name
    vb_attr :dhcp_enabled
    vb_attr :ip_address
    vb_attr :network_mask
    vb_attr :ipv6_supported
    vb_attr :ipv6_address
    vb_attr :ipv6_network_mask_prefix_length
    vb_attr :hardware_address
    vb_attr :medium_type
    vb_attr :status
    vb_attr :interface_type

    vb_method :dhcp_rediscover
    vb_method :enable_dynamic_ip_config
    vb_method :enable_static_ip_config #TODO params that start with acronym here!
    vb_method :enable_static_ip_config_v6


  end
end
