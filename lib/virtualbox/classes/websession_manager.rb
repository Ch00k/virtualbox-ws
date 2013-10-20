module VBox
  class WebsessionManager < Base

    def initialize
      WebService.connect
      @ref = nil
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
      key = VBox::WebService.send_request(:i_websession_manager_logon, args)
      @ref = key
      VirtualBox.new(key)
    end

    def logoff
      WebService.send_request(:i_websession_manager_logoff, _this)
      @ref = nil
    end

    def get_session_object
      session = WebService.send_request(:i_websession_manager_get_session_object, _this)
      Session.new(session)
    end
  end
end
