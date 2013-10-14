module VBox
  class EventSource < Base

    # Methods

    def create_aggregator(args={})
      ensure_hash args
      args.referize! :subordinates
      event_source = VBox::WebService.send_request(:i_event_source_create_aggregator, _this.merge(args))
      VBox::EventSource.new(event_source)
    end

    def create_listener
      event_listener = VBox::WebService.send_request(:i_event_source_create_listener, _this)
      VBox::EventListener.new(event_listener)
    end

    def event_processed(args={})
      ensure_hash args
      args.referize! :listener, :event
      VBox::WebService.send_request(:i_event_source_event_processed, _this.merge(args))
    end

    def fire_event(args={})
      ensure_hash args
      args.referize! :event
      VBox::WebService.send_request(:i_event_source_fire_event, _this.merge(args))
    end

    def get_event(args={})
      ensure_hash args
      args.referize! :listener
      event_obj_ref = VBox::WebService.send_request(:i_event_source_get_event, _this.merge(args))
      if event_obj_ref.nil?
        nil
      else
        event = VBox::Event.new(event_obj_ref)
        event_subclass = event.type.split('On')[1] + 'Event'
        VBox.const_get(event_subclass).new(event_obj_ref)
      end
    end

    def register_listener(args={})
      ensure_hash args
      args.referize! :listener
      VBox::WebService.send_request(:i_event_source_register_listener, _this.merge(args))
    end

    def unregister_listener(args={})
      ensure_hash args
      args.referize! :listener
      VBox::WebService.send_request(:i_event_source_unregister_listener, _this.merge(args))
    end
  end
end
