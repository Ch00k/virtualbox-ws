module VBox
  class MachineDataChangedEvent < MachineEvent

    attr_reader :ref

    # Attributes

    def temporary
      VBox::WebService.send_request(:i_machine_data_changed_event_get_temporary, _this)
    end
  end
end