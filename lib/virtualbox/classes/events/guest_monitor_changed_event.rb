module VBox
  class GuestMonitorChangedEvent < Event

    attr_reader :ref

    # Attributes

    def change_type
      VBox::WebService.send_request(:i_guest_monitor_changed_event_get_change_type, _this)
    end

    def screen_id
      VBox::WebService.send_request(:i_guest_monitor_changed_event_get_screen_id, _this)
    end

    def origin_x
      VBox::WebService.send_request(:i_guest_monitor_changed_event_get_origin_x, _this)
    end

    def origin_y
      VBox::WebService.send_request(:i_guest_monitor_changed_event_get_origin_y, _this)
    end

    def width
      VBox::WebService.send_request(:i_guest_monitor_changed_event_get_width, _this)
    end

    def height
      VBox::WebService.send_request(:i_guest_monitor_changed_event_get_height, _this)
    end
  end
end