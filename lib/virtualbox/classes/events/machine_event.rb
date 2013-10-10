module VBox
  class MachineEvent < Event

    attr_reader :ref

    # Attributes

    def machine_id
      VBox::WebService.send_request(:i_machine_event_get_id, _this)
    end
  end
end