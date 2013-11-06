module VBox
  class Mouse < Base

    vb_attr :absolute_supported
    vb_attr :relative_supported
    vb_attr :multi_touch_supported
    vb_attr :needs_host_cursor
    vb_attr :event_source

    vb_method :put_event_multi_touch
    vb_method :put_event_multi_touch_string
    vb_method :put_mouse_event
    vb_method :put_mouse_event_absolute

  end
end
