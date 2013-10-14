module VBox
  class HostNetworkInterface < Base

    # Attributes

    def name
      VBox::WebService.send_request(:i_host_network_interface_get_name, _this)
    end

    def id
      VBox::WebService.send_request(:i_host_network_interface_get_id, _this)
    end

    def network_name
      VBox::WebService.send_request(:i_host_network_interface_get_network_name, _this)
    end

    def dhcp_enabled
      VBox::WebService.send_request(:i_host_network_interface_get_dhcp_enabled, _this)
    end

    def ip_address
      VBox::WebService.send_request(:i_host_network_interface_get_ip_address, _this)
    end

    def network_mask
      VBox::WebService.send_request(:i_host_network_interface_get_network_mask, _this)
    end

    def ipv6_supported
      VBox::WebService.send_request(:i_host_network_interface_get_ipv6_supported, _this)
    end

    def ipv6_address
      VBox::WebService.send_request(:i_host_network_interface_get_ipv6_address, _this)
    end

    def ipv6_network_mask_prefix_length
      VBox::WebService.send_request(:i_host_network_interface_get_ipv6_network_mask_prefix_length, _this)
    end

    def hardware_address
      VBox::WebService.send_request(:i_host_network_interface_get_hardware_address, _this)
    end

    def medium_type
      VBox::WebService.send_request(:i_host_network_interface_get_medium_type, _this)
    end

    def status
      VBox::WebService.send_request(:i_host_network_interface_get_status, _this)
    end

    def interface_type
      VBox::WebService.send_request(:i_host_network_interface_get_interface_type, _this)
    end

    # Methods

    def dhcp_rediscover
      VBox::WebService.send_request(:i_host_network_interface_dhcp_rediscover, _this)
    end

    def enable_dynamic_ip_config
      VBox::WebService.send_request(:i_host_network_interface_enable_dynamic_ip_config, _this)
    end

    def enable_static_ip_config
      VBox::WebService.send_request(:i_host_network_interface_enable_static_ip_config, _this)
    end

    def enable_static_ip_config_v6
      VBox::WebService.send_request(:i_host_network_interface_enable_static_ip_config_v6, _this)
    end
  end
end
