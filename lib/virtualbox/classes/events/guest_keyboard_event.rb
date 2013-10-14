module VBox
  class GuestKeyboardEvent < Event

    # Attributes

    def scancodes
      VBox::WebService.send_request(:i_guest_keyboard_event_get_scancodes, _this)
    end
  end
end