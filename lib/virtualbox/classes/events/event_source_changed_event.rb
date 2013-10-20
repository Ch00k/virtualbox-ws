module VBox
  class EventSourceChangedEvent < Event

    # Attributes

    def listener
      event_listener = WebService.send_request(:i_event_source_changed_event_get_listener, _this)
      EventListener.new(event_listener)
    end

    def add
      WebService.send_request(:i_event_source_changed_event_get_add, _this)
    end
  end
end