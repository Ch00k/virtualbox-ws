module VBox
  class MachineRegisteredEvent < MachineEvent

    # Attributes

    def registered
      WebService.send_request(:i_machine_registered_event_get_registered, _this)
    end
  end
end