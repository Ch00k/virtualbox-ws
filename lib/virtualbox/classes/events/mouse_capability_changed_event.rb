module VBox
  class MouseCapabilityChangedEvent < Event

    # Attributes

    def supports_absolute
      VBox::WebService.send_request(:i_mouse_capability_changed_event_supports_absolute, _this)
    end

    def supports_relative
      VBox::WebService.send_request(:i_mouse_capability_changed_event_supports_relative, _this)
    end

    def needs_host_cursor
      VBox::WebService.send_request(:i_mouse_capability_changed_event_needs_host_cursor, _this)
    end
  end
end