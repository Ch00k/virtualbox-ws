module VBox
  class GuestMouseEvent < ReusableEvent

    attr_reader :ref

    # Attributes

    def absolute
      VBox::WebService.send_request(:i_guest_mouse_event_get_absolute, _this)
    end

    def x
      VBox::WebService.send_request(:i_guest_mouse_event_get_x, _this)
    end

    def y
      VBox::WebService.send_request(:i_guest_mouse_event_get_y, _this)
    end

    def z
      VBox::WebService.send_request(:i_guest_mouse_event_get_z, _this)
    end

    def w
      VBox::WebService.send_request(:i_guest_mouse_event_get_w, _this)
    end

    def buttons
      VBox::WebService.send_request(:i_guest_mouse_event_get_buttons, _this)
    end
  end
end