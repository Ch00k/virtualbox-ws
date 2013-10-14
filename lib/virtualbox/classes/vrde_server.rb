module VBox
  class VRDEServer < Base

    # Attributes

    def enabled
      VBox::WebService.send_request(:ivrde_server_get_enabled, _this)
    end

    def enabled=(enabled)
      VBox::WebService.send_request(:ivrde_server_set_enabled, _this.merge(:enabled => enabled))
    end

    def auth_type
      VBox::WebService.send_request(:ivrde_server_get_auth_type, _this)
    end

    def auth_type=(auth_type)
      VBox::WebService.send_request(:ivrde_server_set_auth_type, _this.merge(:auth_type => auth_type))
    end

    def auth_timeout
      VBox::WebService.send_request(:ivrde_server_get_auth_timeout, _this)
    end

    def auth_timeout=(auth_timeout)
      VBox::WebService.send_request(:ivrde_server_set_auth_timeout, _this.merge(:auth_timeout => auth_timeout))
    end

    def allow_multi_connection
      VBox::WebService.send_request(:ivrde_server_get_allow_multi_connection, _this)
    end

    def allow_multi_connection=(allow_multi_connection)
      VBox::WebService.send_request(:ivrde_server_set_allow_multi_connection, _this.merge(:allow_multi_connection => allow_multi_connection))
    end

    def reuse_single_connection
      VBox::WebService.send_request(:ivrde_server_get_reuse_single_connection, _this)
    end

    def reuse_single_connection=(reuse_single_connection)
      VBox::WebService.send_request(:ivrde_server_set_reuse_single_connection, _this.merge(:reuse_single_connection => reuse_single_connection))
    end

    def vrde_ext_pack
      VBox::WebService.send_request(:ivrde_server_get_vrde_ext_pack, _this)
    end

    def vrde_ext_pack=(vrde_ext_pack)
      VBox::WebService.send_request(:ivrde_server_set_vrde_ext_pack, _this.merge(:vrde_ext_pack => vrde_ext_pack))
    end

    def auth_library
      VBox::WebService.send_request(:ivrde_server_get_auth_library, _this)
    end

    def auth_library=(auth_library)
      VBox::WebService.send_request(:ivrde_server_set_auth_library, _this.merge(:auth_library => auth_library))
    end

    def vrde_properties
      VBox::WebService.send_request(:ivrde_server_get_vrde_properties, _this)
    end

    # Methods

    def get_vrde_property(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:ivrde_server_get_vrde_property, _this.merge(args))
    end

    def set_vrde_property(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:ivrde_server_set_vrde_property, _this.merge(args))
    end
  end
end
