module VBox
  class CPUChangedEvent < Event

    attr_reader :ref

    # Attributes

    def cpu
      VBox::WebService.send_request(:icpu_changed_event_get_cpu, _this)
    end

    def add
      VBox::WebService.send_request(:icpu_changed_event_get_add, _this)
    end
  end
end