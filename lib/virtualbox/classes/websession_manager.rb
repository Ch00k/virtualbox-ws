module VBox
  class WebsessionManager < Base

    def initialize
      WebService.connect
      @ref = nil
      require_rel '/../classes'
    end

    def _this
      _this = {}
      _this[:ref_i_virtual_box] = @ref
      _this
    end

    # Methods

    def logon
      args = Hash[:username => WebService.configuration.vboxweb_user,
                  :password => WebService.configuration.vboxweb_pass]
      @ref = WebService.send_request(:i_websession_manager_logon, args)
      VirtualBox.new(@ref)
    end

    def logoff
      WebService.send_request(:i_websession_manager_logoff, _this)
      @ref = nil
    end

    vb_method :get_session_object
  end
end
