module VBox
  class MediumRegisteredEvent < Event

    # Attributes

    def medium_id
      WebService.send_request(:i_medium_registered_event_get_medium_id, _this)
    end

    def medium_type
      WebService.send_request(:i_medium_registered_event_get_medium_type, _this)
    end

    def registered
      WebService.send_request(:i_medium_registered_event_get_registered, _this)
    end
  end
end