module VBox
  class Mouse < Base

    # Attributes

    def absolute_supported
      VBox::WebService.send_request(:i_mouse_get_absolute_supported, _this)
    end

    def relative_supported
      VBox::WebService.send_request(:i_mouse_get_relative_supported, _this)
    end

    def needs_host_cursor
      VBox::WebService.send_request(:i_mouse_get_needs_host_cursor, _this)
    end

    def event_source
      event_source = VBox::WebService.send_request(:i_mouse_get_event_source, _this)
      VBox::EventSource.new(event_source)
    end

    # Methods

    def put_mouse_event(args={})
      ensure_hash args
      VBox::WebService.send_request(:i_mouse_put_mouse_event, _this)
    end

    def put_mouse_event_absolute(args={})
      ensure_hash args
      VBox::WebService.send_request(:i_mouse_put_mouse_event_absolute, _this)
    end
  end
end
