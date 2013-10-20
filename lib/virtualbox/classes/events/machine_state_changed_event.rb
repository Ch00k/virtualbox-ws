module VBox
  class MachineStateChangedEvent < MachineEvent

    # Attributes

    def state
      WebService.send_request(:i_machine_state_changed_event_get_state, _this)
    end
  end
end