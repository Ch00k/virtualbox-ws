module VBox
  class Session < Base

    # Attributes

    def state
      WebService.send_request(:i_session_get_state, _this)
    end

    def type
      WebService.send_request(:i_session_get_type, _this)
    end

    def machine
      machine = WebService.send_request(:i_session_get_machine, _this)
      Machine.new(machine)
    end

    def console
      console = WebService.send_request(:i_session_get_console, _this)
      Console.new(console)
    end

    # Methods

    def unlock_machine
      WebService.send_request(:i_session_unlock_machine, _this)
    end
  end
end
