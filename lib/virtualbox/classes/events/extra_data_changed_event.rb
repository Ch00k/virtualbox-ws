module VBox
  class ExtraDataChangedEvent < VetoEvent

    # Attributes

    def machine_id
      VBox::WebService.send_request(:i_extra_data_changed_event_get_machine_id, _this)
    end

    def key
      VBox::WebService.send_request(:i_extra_data_changed_event_get_key, _this)
    end

    def value
      VBox::WebService.send_request(:i_extra_data_changed_event_get_value, _this)
    end
  end
end