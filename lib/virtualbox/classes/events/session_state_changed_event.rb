module VBox
  class SessionStateChangedEvent < MachineEvent

    # Attributes

    def state
      WebService.send_request(:i_session_state_changed_event_get_state, _this)
    end
  end
end
