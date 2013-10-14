module VBox
  class NATRedirectEvent < MachineEvent

    # Attributes

    def slot
      VBox::WebService.send_request(:inat_redirect_event_get_slot, _this)
    end

    def remove
      VBox::WebService.send_request(:inat_redirect_event_get_remove, _this)
    end

    def name
      VBox::WebService.send_request(:inat_redirect_event_get_name, _this)
    end

    def proto
      VBox::WebService.send_request(:inat_redirect_event_get_proto, _this)
    end

    def host_ip
      VBox::WebService.send_request(:inat_redirect_event_get_host_ip, _this)
    end

    def host_port
      VBox::WebService.send_request(:inat_redirect_event_get_host_port, _this)
    end

    def guest_ip
      VBox::WebService.send_request(:inat_redirect_event_get_guest_ip, _this)
    end

    def guest_port
      VBox::WebService.send_request(:inat_redirect_event_get_guest_port, _this)
    end
  end
end