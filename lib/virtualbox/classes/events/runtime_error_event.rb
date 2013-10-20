module VBox
  class RuntimeErrorEvent < Event

    # Attributes

    def fatal
      WebService.send_request(:i_runtime_error_event_get_fatal, _this)
    end

    def id
      WebService.send_request(:i_runtime_error_event_get_id, _this)
    end

    def message
      WebService.send_request(:i_runtime_error_event_get_message, _this)
    end
  end
end
