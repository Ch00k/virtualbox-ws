module VBox
  class DHCPServer < Base

    # Attributes

    def enabled
      WebService.send_request(:i_dhcp_server_get_enabled, _this)
    end

    def enabled=(enabled)
      WebService.send_request(:i_dhcp_server_set_enabled, _this.merge(:enabled => enabled))
    end

    def ip_address
      WebService.send_request(:i_dhcp_server_get_ip_address, _this)
    end

    def network_mask
      WebService.send_request(:i_dhcp_server_get_network_mask, _this)
    end

    def network_name
      WebService.send_request(:i_dhcp_server_get_network_name, _this)
    end

    def lower_ip
      WebService.send_request(:i_dhcp_server_get_lower_ip, _this)
    end

    def upper_ip
      WebService.send_request(:i_dhcp_server_get_upper_ip, _this)
    end

    # Methods

    def set_configuration(args={})
      ensure_hash args
      WebService.send_request(:i_dhcp_server_set_configuration, _this.merge(args))
    end

    def start(args={})
      ensure_hash args
      WebService.send_request(:i_dhcp_server_start, _this.merge(args))
    end

    def stop
      WebService.send_request(:i_dhcp_server_stop, _this)
    end
  end
end
