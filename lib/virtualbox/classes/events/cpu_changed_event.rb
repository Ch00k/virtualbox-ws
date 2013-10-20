module VBox
  class CPUChangedEvent < Event

    # Attributes

    def cpu
      WebService.send_request(:icpu_changed_event_get_cpu, _this)
    end

    def add
      WebService.send_request(:icpu_changed_event_get_add, _this)
    end
  end
end