module VBox
  class MachineRegisteredEvent < MachineEvent

    attr_reader :ref

    # Attributes

    def registered
      VBox::WebService.send_request(:i_machine_registered_event_get_registered, _this)
    end
  end
end