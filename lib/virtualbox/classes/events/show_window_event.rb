module VBox
  class ShowWindowEvent < MachineEvent

    attr_reader :ref

    # Attributes

    def win_id
      VBox::WebService.send_request(:i_show_window_event_get_win_id, _this)
    end
  end
end
