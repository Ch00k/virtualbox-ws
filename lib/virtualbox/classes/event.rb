module VBox
  class Event < Base

    # Attributes

    def type
      WebService.send_request(:i_event_get_type, _this)
    end

    def source
      source = WebService.send_request(:i_event_get_source, _this)
      EventSource.new(source)
    end

    def waitable
      WebService.send_request(:i_event_get_waitable, _this)
    end

    # Methods

    def set_processed
      WebService.send_request(:i_event_set_processed, _this)
    end

    def wait_processed(args={})
      ensure_hash args
      WebService.send_request(:i_event_set_processed, _this.merge(args))
    end
  end
end
