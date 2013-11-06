module VBox
  class EventSource < Base

    vb_method :create_aggregator
    vb_method :create_listener
    vb_method :event_processed
    vb_method :fire_event
    vb_method :get_event
    vb_method :register_listener
    vb_method :unregister_listener

  end
end
