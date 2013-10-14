module VBox
  class MousePointerShapeChangedEvent < Event

    # Attributes

    def visible
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_visible, _this)
    end

    def alpha
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_alpha, _this)
    end

    def xhot
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_xhot, _this)
    end

    def yhot
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_yhot, _this)
    end

    def width
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_width, _this)
    end

    def height
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_height, _this)
    end

    def shape
      VBox::WebService.send_request(:i_mouse_pointer_shape_changed_event_get_shape, _this)
    end
  end
end