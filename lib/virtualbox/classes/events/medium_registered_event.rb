module VBox
  class MediumRegisteredEvent < Event

    # Attributes

    def medium_id
      VBox::WebService.send_request(:i_medium_registered_event_get_medium_id, _this)
    end

    def medium_type
      VBox::WebService.send_request(:i_medium_registered_event_get_medium_type, _this)
    end

    def registered
      VBox::WebService.send_request(:i_medium_registered_event_get_registered, _this)
    end
  end
end