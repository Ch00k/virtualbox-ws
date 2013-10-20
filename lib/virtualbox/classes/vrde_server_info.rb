module VBox
  class VRDEServerInfo < Base

    # Attributes

    def active
      WebService.send_request(:ivrde_server_info_get_active, _this)
    end

    def port
      WebService.send_request(:ivrde_server_info_get_port, _this)
    end

    def number_of_clients
      WebService.send_request(:ivrde_server_info_get_number_of_clients, _this)
    end

    def begin_time
      WebService.send_request(:ivrde_server_info_get_begin_time, _this)
    end

    def end_time
      WebService.send_request(:ivrde_server_info_get_end_time, _this)
    end

    def bytes_sent
      WebService.send_request(:ivrde_server_info_get_active, _this)
    end

    def bytes_sent_total
      WebService.send_request(:ivrde_server_info_get_bytes_sent_total, _this)
    end

    def bytes_received
      WebService.send_request(:ivrde_server_info_get_bytes_received, _this)
    end

    def bytes_received_total
      WebService.send_request(:ivrde_server_info_get_bytes_receied_total, _this)
    end

    def user
      WebService.send_request(:ivrde_server_info_get_user, _this)
    end

    def domain
      WebService.send_request(:ivrde_server_info_get_domain, _this)
    end

    def client_name
      WebService.send_request(:ivrde_server_info_get_client_name, _this)
    end

    def client_ip
      WebService.send_request(:ivrde_server_info_get_client_ip, _this)
    end

    def client_version
      WebService.send_request(:ivrde_server_info_get_client_version, _this)
    end

    def encryption_style
      WebService.send_request(:ivrde_server_info_get_encryption_style, _this)
    end
  end
end
