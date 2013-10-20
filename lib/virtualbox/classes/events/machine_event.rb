module VBox
  class MachineEvent < Event

    # Attributes

    def machine_id
      WebService.send_request(:i_machine_event_get_id, _this)
    end
  end
end