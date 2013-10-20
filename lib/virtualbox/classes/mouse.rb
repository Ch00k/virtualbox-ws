module VBox
  class Mouse < Base

    # Attributes

    def absolute_supported
      WebService.send_request(:i_mouse_get_absolute_supported, _this)
    end

    def relative_supported
      WebService.send_request(:i_mouse_get_relative_supported, _this)
    end

    def needs_host_cursor
      WebService.send_request(:i_mouse_get_needs_host_cursor, _this)
    end

    def event_source
      event_source = WebService.send_request(:i_mouse_get_event_source, _this)
      EventSource.new(event_source)
    end

    # Methods

    def put_mouse_event(args={})
      ensure_hash args
      WebService.send_request(:i_mouse_put_mouse_event, _this)
    end

    def put_mouse_event_absolute(args={})
      ensure_hash args
      WebService.send_request(:i_mouse_put_mouse_event_absolute, _this)
    end
  end
end
