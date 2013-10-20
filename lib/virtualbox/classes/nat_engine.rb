module VBox
  class NATEngine < Base

    # Attributes

    def network
      WebService.send_request(:inat_engine_get_network, _this)
    end

    def network=(network)
      WebService.send_request(:inat_engine_set_network, _this.merge(:network => network))
    end

    def host_ip
      WebService.send_request(:inat_engine_get_host_ip, _this)
    end

    def host_ip=(host_ip)
      WebService.send_request(:inat_engine_set_host_ip, _this.merge(:host_ip => host_ip))
    end

    def tftp_prefix
      WebService.send_request(:inat_engine_get_tftp_prefix, _this)
    end

    def tftp_prefix=(tftp_prefix)
      WebService.send_request(:inat_engine_set_tftp_prefix, _this.merge('TFTPPrefix' => tftp_prefix))
    end

    def tftp_boot_file
      WebService.send_request(:inat_engine_get_tftp_boot_file, _this)
    end

    def tftp_boot_file=(tftp_boot_file)
      WebService.send_request(:inat_engine_set_tftp_boot_file, _this.merge('TFTPBootFile' => tftp_boot_file))
    end

    def tftp_next_server
      WebService.send_request(:inat_engine_get_tftp_next_server, _this)
    end

    def tftp_next_server=(tftp_next_server)
      WebService.send_request(:inat_engine_set_tftp_next_server,
                                    _this.merge('TFTPNextServer' => tftp_next_server))
    end

    def alias_mode
      WebService.send_request(:inat_engine_get_alias_mode, _this)
    end

    def alias_mode=(alias_mode)
      WebService.send_request(:inat_engine_set_alias_mode, _this.merge(:alias_mode => alias_mode))
    end

    def dns_pass_domain
      WebService.send_request(:inat_engine_get_dns_pass_domain, _this)
    end

    def dns_pass_domain=(dns_pass_domain)
      WebService.send_request(:inat_engine_set_dns_pass_domain, _this.merge('DNSPassDomain' => dns_pass_domain))
    end

    def dns_proxy
      WebService.send_request(:inat_engine_get_dns_proxy, _this)
    end

    def dns_proxy=(dns_proxy)
      WebService.send_request(:inat_engine_set_dns_proxy, _this.merge('DNSProxy' => dns_proxy))
    end

    def dns_use_host_resolver
      WebService.send_request(:inat_engine_get_dns_use_host_resolver, _this)
    end

    def dns_use_host_resolver=(dns_use_host_resolver)
      WebService.send_request(:inat_engine_set_dns_use_host_resolver,
                                    _this.merge('DNSUseHostResolver' => dns_use_host_resolver))
    end

    def redirects
      WebService.send_request(:inat_engine_get_redirects, _this)
    end

    # Methods

    def add_redirect(args={})
      ensure_hash args
      WebService.send_request(:inat_engine_add_redirect, _this.merge(args))
    end

    def get_network_settings
      WebService.send_request(:inat_engine_add_redirect, _this)
    end

    def remove_redirect(args={})
      ensure_hash args
      WebService.send_request(:inat_engine_remove_redirect, _this.merge(args))
    end

    def set_network_settings(args={})
      ensure_hash args
      WebService.send_request(:inat_engine_set_network_settings, _this.merge(args))
    end
  end
end
