module VBox
  class CPUExecutionCapChangedEvent < Event

    # Attributes

    def execution_cap
      WebService.send_request(:icpu_execution_cap_changed_event_get_execution_cap, _this)
    end
  end
end