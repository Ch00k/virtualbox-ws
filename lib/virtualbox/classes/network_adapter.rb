module VBox
  class NetworkAdapter < Base

    # Attributes

    def adapter_type
      WebService.send_request(:i_network_adapter_get_adapter_type, _this)
    end

    def adapter_type=(adapter_type)
      WebService.send_request(:i_network_adapter_set_adapter_type, _this.merge(:adapter_type => adapter_type))
    end

    def slot
      WebService.send_request(:i_network_adapter_get_slot, _this)
    end

    def enabled
      WebService.send_request(:i_network_adapter_get_enabled, _this)
    end

    def enabled=(enabled)
      WebService.send_request(:i_network_adapter_set_enabled, _this.merge(:enabled => enabled))
    end

    def mac_address
      WebService.send_request(:i_network_adapter_get_mac_address, _this)
    end

    def mac_address=(mac_address)
      WebService.send_request(:i_network_adapter_set_mac_address, _this.merge(:mac_address => mac_address))
    end

    def attachment_type
      WebService.send_request(:i_network_adapter_get_attachment_type, _this)
    end

    def attachment_type=(attachment_type)
      WebService.send_request(:i_network_adapter_set_attachment_type,
                                    _this.merge(:attachment_type => attachment_type))
    end

    def bridged_interface
      WebService.send_request(:i_network_adapter_get_bridged_interface, _this)
    end

    def bridged_interface=(bridged_interface)
      WebService.send_request(:i_network_adapter_set_bridged_interface,
                                    _this.merge(:bridged_interface => bridged_interface))
    end

    def host_only_interface
      WebService.send_request(:i_network_adapter_get_host_only_interface, _this)
    end

    def host_only_interface=(host_only_interface)
      WebService.send_request(:i_network_adapter_set_host_only_interface,
                                    _this.merge(:host_only_interface => host_only_interface))
    end

    def internal_network
      WebService.send_request(:i_network_adapter_get_internal_network, _this)
    end

    def internal_network=(internal_network)
      WebService.send_request(:i_network_adapter_set_internal_network,
                                    _this.merge(:internal_network => internal_network))
    end

    def nat_network
      WebService.send_request(:i_network_adapter_get_nat_network, _this)
    end

    def nat_network=(nat_network)
      WebService.send_request(:i_network_adapter_set_nat_network, _this.merge(:nat_network => nat_network))
    end

    def generic_driver
      WebService.send_request(:i_network_adapter_get_generic_driver, _this)
    end

    def generic_driver=(generic_driver)
      WebService.send_request(:i_network_adapter_set_generic_driver,
                                    _this.merge(:generic_driver => generic_driver))
    end

    def cable_connected
      WebService.send_request(:i_network_adapter_get_cable_connected, _this)
    end

    def cable_connected=(cable_connected)
      WebService.send_request(:i_network_adapter_set_cable_connected,
                                    _this.merge(:cable_connected => cable_connected))
    end

    def line_speed
      WebService.send_request(:i_network_adapter_get_line_speed, _this)
    end

    def line_speed=(line_speed)
      WebService.send_request(:i_network_adapter_set_line_speed, _this.merge(:line_speed => line_speed))
    end

    def promisc_mode_policy
      WebService.send_request(:i_network_adapter_get_promisc_mode_policy, _this)
    end

    def promisc_mode_policy=(promisc_mode_policy)
      WebService.send_request(:i_network_adapter_set_promisc_mode_policy,
                                    _this.merge(:promisc_mode_policy => promisc_mode_policy))
    end

    def trace_enabled
      WebService.send_request(:i_network_adapter_get_trace_enabled, _this)
    end

    def trace_enabled=(trace_enabled)
      WebService.send_request(:i_network_adapter_set_trace_enabled, _this.merge(:trace_enabled => trace_enabled))
    end

    def trace_file
      WebService.send_request(:i_network_adapter_get_trace_file, _this)
    end

    def trace_file=(trace_file)
      WebService.send_request(:i_network_adapter_set_trace_file, _this.merge(:trace_file => trace_file))
    end

    def nat_engine
      nat_engine = WebService.send_request(:i_network_adapter_get_nat_engine, _this)
      NATEngine.new(nat_engine)
    end

    def boot_priority
      WebService.send_request(:i_network_adapter_get_boot_priority, _this)
    end

    def boot_priority=(boot_priority)
      WebService.send_request(:i_network_adapter_set_boot_priority, _this.merge(:boot_priority => boot_priority))
    end

    def bandwidth_group
      WebService.send_request(:i_network_adapter_get_bandwidth_group, _this)
    end

    def bandwidth_group=(bandwidth_group)
      bandwidth_group = bandwidth_group.ref if bandwidth_group.respond_to?(:ref)
      WebService.send_request(:i_network_adapter_set_bandwidth_group,
                                    _this.merge(:bandwidth_group => bandwidth_group))
    end

    # Methods

    def get_properties(args={})
      ensure_hash args
      WebService.send_request(:i_network_adapter_get_properties, _this.merge(args))
    end

    def get_property(args={})
      ensure_hash args
      WebService.send_request(:i_network_adapter_get_property, _this.merge(args))
    end

    def set_property(args={})
      ensure_hash args
      WebService.send_request(:i_network_adapter_set_property, _this.merge(args))
    end
  end
end
