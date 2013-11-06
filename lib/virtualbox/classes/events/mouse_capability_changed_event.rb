module VBox
  class MouseCapabilityChangedEvent < Event

    vb_attr :supports_absolute
    vb_attr :supports_relative
    vb_attr :supports_multi_touch
    vb_attr :needs_host_cursor

  end
end