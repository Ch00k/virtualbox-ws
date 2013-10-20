module VBox
  class MouseCapabilityChangedEvent < Event

    # Attributes

    def supports_absolute
      WebService.send_request(:i_mouse_capability_changed_event_supports_absolute, _this)
    end

    def supports_relative
      WebService.send_request(:i_mouse_capability_changed_event_supports_relative, _this)
    end

    def needs_host_cursor
      WebService.send_request(:i_mouse_capability_changed_event_needs_host_cursor, _this)
    end
  end
end