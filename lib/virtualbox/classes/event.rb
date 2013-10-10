module VBox
  class Event < Base

    attr_reader :ref

    # Attributes

    def type
      VBox::WebService.send_request(:i_event_get_type, _this)
    end

    def source
      source = VBox::WebService.send_request(:i_event_get_source, _this)
      VBox::EventSource.new(source)
    end

    def waitable
      VBox::WebService.send_request(:i_event_get_waitable, _this)
    end

    # Methods

    def set_processed
      VBox::WebService.send_request(:i_event_set_processed, _this)
    end

    def wait_processed(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_event_set_processed, _this.merge(args))
    end
  end
end
