module VBox
  class WebsessionManager < Base

    def initialize(obj_ref=nil)
      super
    end

    def _this
      _this = {}
      _this[:ref_i_virtual_box] = @ref
      _this
    end

    # Methods

    def logon(args={})
      ensure_hash args
      key = VBox::WebService.send_request(:i_websession_manager_logon, args)
      @ref = key
      VBox::VirtualBox.new(key)
    end

    def logoff
      VBox::WebService.send_request(:i_websession_manager_logoff, _this)
      @ref = nil
    end

    def get_session_object
      session = VBox::WebService.send_request(:i_websession_manager_get_session_object, _this)
      VBox::Session.new(session)
    end
  end
end
