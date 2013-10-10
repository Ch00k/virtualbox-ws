module VBox
  class Session < Base

    attr_reader :ref

    # Attributes

    def state
      VBox::WebService.send_request(:i_session_get_state, _this)
    end

    def type
      VBox::WebService.send_request(:i_session_get_type, _this)
    end

    def machine
      machine = VBox::WebService.send_request(:i_session_get_machine, _this)
      VBox::Machine.new(machine)
    end

    def console
      console = VBox::WebService.send_request(:i_session_get_console, _this)
      VBox::Console.new(console)
    end

    # Methods

    def unlock_machine
      VBox::WebService.send_request(:i_session_unlock_machine, _this)
    end
  end
end
