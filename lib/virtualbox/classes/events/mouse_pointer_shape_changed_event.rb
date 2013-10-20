module VBox
  class MousePointerShapeChangedEvent < Event

    # Attributes

    def visible
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_visible, _this)
    end

    def alpha
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_alpha, _this)
    end

    def xhot
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_xhot, _this)
    end

    def yhot
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_yhot, _this)
    end

    def width
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_width, _this)
    end

    def height
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_height, _this)
    end

    def shape
      WebService.send_request(:i_mouse_pointer_shape_changed_event_get_shape, _this)
    end
  end
end