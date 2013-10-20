module VBox
  class VBoxSVCAvailabilityChangedEvent < Event

    # Attributes

    def available
      WebService.send_request(:v_box_svc_availability_changed_event_get_available, _this)
    end
  end
end
