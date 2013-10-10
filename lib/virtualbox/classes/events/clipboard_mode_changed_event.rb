module VBox
  class ClipboardModeChangedEvent < Event

    attr_reader :ref

    # Attributes

    def clipboard_mode
      VBox::WebService.send_request(:i_clipboard_mode_changed_event_get_clipboard_mode, _this)
    end
  end
end