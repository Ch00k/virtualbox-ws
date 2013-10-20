module VBox
  class GuestMonitorChangedEvent < Event

    # Attributes

    def change_type
      WebService.send_request(:i_guest_monitor_changed_event_get_change_type, _this)
    end

    def screen_id
      WebService.send_request(:i_guest_monitor_changed_event_get_screen_id, _this)
    end

    def origin_x
      WebService.send_request(:i_guest_monitor_changed_event_get_origin_x, _this)
    end

    def origin_y
      WebService.send_request(:i_guest_monitor_changed_event_get_origin_y, _this)
    end

    def width
      WebService.send_request(:i_guest_monitor_changed_event_get_width, _this)
    end

    def height
      WebService.send_request(:i_guest_monitor_changed_event_get_height, _this)
    end
  end
end