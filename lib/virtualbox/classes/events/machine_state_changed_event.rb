module VBox
  class MachineStateChangedEvent < MachineEvent

    attr_reader :ref

    # Attributes

    def state
      VBox::WebService.send_request(:i_machine_state_changed_event_get_state, _this)
    end
  end
end