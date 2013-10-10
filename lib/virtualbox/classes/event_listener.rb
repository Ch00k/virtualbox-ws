module VBox
  class EventListener < Base

    attr_reader :ref

    # Methods

    def handle_event(args={})
      ensure_hash(args)
      args[:event] = args[:event].ref if args.has_key?(:event) & args[:event].respond_to?(:ref)
      VBox::WebService.send_request(:i_event_listener_handle_event, _this.merge(args))
    end
  end
end
