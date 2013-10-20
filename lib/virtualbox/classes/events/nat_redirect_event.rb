module VBox
  class NATRedirectEvent < MachineEvent

    # Attributes

    def slot
      WebService.send_request(:inat_redirect_event_get_slot, _this)
    end

    def remove
      WebService.send_request(:inat_redirect_event_get_remove, _this)
    end

    def name
      WebService.send_request(:inat_redirect_event_get_name, _this)
    end

    def proto
      WebService.send_request(:inat_redirect_event_get_proto, _this)
    end

    def host_ip
      WebService.send_request(:inat_redirect_event_get_host_ip, _this)
    end

    def host_port
      WebService.send_request(:inat_redirect_event_get_host_port, _this)
    end

    def guest_ip
      WebService.send_request(:inat_redirect_event_get_guest_ip, _this)
    end

    def guest_port
      WebService.send_request(:inat_redirect_event_get_guest_port, _this)
    end
  end
end