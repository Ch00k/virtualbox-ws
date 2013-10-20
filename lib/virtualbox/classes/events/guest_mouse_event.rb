module VBox
  class GuestMouseEvent < ReusableEvent

    # Attributes

    def absolute
      WebService.send_request(:i_guest_mouse_event_get_absolute, _this)
    end

    def x
      WebService.send_request(:i_guest_mouse_event_get_x, _this)
    end

    def y
      WebService.send_request(:i_guest_mouse_event_get_y, _this)
    end

    def z
      WebService.send_request(:i_guest_mouse_event_get_z, _this)
    end

    def w
      WebService.send_request(:i_guest_mouse_event_get_w, _this)
    end

    def buttons
      WebService.send_request(:i_guest_mouse_event_get_buttons, _this)
    end
  end
end