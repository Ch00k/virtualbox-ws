module VBox
  class ClipboardModeChangedEvent < Event

    # Attributes

    def clipboard_mode
      WebService.send_request(:i_clipboard_mode_changed_event_get_clipboard_mode, _this)
    end
  end
end