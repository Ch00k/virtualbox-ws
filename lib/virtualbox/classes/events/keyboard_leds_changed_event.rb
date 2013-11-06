module VBox
  class KeyboardLedsChangedEvent < Event

    vb_attr :num_lock
    vb_attr :caps_lock
    vb_attr :scroll_lock

  end
end