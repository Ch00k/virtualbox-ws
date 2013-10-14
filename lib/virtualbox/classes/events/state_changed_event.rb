module VBox
  class StateChangedEvent < Event

    # Attributes

    def state
      VBox::WebService.send_request(:i_state_changed_event_get_state, _this)
    end
  end
end
