module VBox
  class DragAndDropModeChangedEvent < Event

    attr_reader :ref

    # Attributes

    def drag_and_drop_mode
      VBox::WebService.send_request(:i_drag_and_drop_mode_changed_event_get_drag_and_drop_mode, _this)
    end
  end
end