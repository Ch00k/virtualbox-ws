module VBox
  class KeyboardLedsChangedEvent < Event

    # Attributes

    def num_lock
      VBox::WebService.send_request(:i_keyboard_leds_changed_event_get_num_lock, _this)
    end

    def caps_lock
      VBox::WebService.send_request(:i_keyboard_leds_changed_event_get_caps_lock, _this)
    end

    def scroll_lock
      VBox::WebService.send_request(:i_keyboard_leds_changed_event_get_scroll_lock, _this)
    end
  end
end