module VBox
  class GuestKeyboardEvent < Event

    attr_reader :ref

    # Attributes

    def scancodes
      VBox::WebService.send_request(:i_guest_keyboard_event_get_scancodes, _this)
    end
  end
end