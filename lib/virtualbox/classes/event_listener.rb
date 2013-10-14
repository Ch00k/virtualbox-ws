module VBox
  class EventListener < Base

    # Methods

    def handle_event(args={})
      ensure_hash args
      args.referize! :event
      VBox::WebService.send_request(:i_event_listener_handle_event, _this.merge(args))
    end
  end
end
