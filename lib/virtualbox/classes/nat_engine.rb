module VBox
  class NATEngine < Base

    vb_attr :network
    vb_attr :host_ip
    vb_attr :tftp_prefix, :force_tag => 'TFTPPrefix'
    vb_attr :tftp_boot_file, :force_tag => 'TFTPBootFile'
    vb_attr :tftp_next_server, :force_tag => 'TFTPNextServer'
    vb_attr :alias_mode
    vb_attr :dns_pass_domain, :force_tag => 'DNSPassDomain'
    vb_attr :dns_proxy, :force_tag => 'DNSProxy'
    vb_attr :dns_use_host_resolver, :force_tag => 'DNSUseHostResolver'
    vb_attr :redirects

    vb_method :add_redirect
    vb_method :get_network_settings
    vb_method :remove_redirct

  end
end
