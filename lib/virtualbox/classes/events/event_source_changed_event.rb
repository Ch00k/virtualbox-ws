module VBox
  class EventSourceChangedEvent < Event

    # Attributes

    def listener
      event_listener = VBox::WebService.send_request(:i_event_source_changed_event_get_listener, _this)
      VBox::EventListener.new(event_listener)
    end

    def add
      VBox::WebService.send_request(:i_event_source_changed_event_get_add, _this)
    end
  end
end