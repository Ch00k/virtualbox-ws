module VBox
  class ReusableEvent < Event

    # Attributes

    def generation
      VBox::WebService.send_request(:i_reusable_event_get_generation, _this)
    end

    # Methods

    def reuse
      VBox::WebService.send_request(:i_reusable_event_reuse, _this)
    end
  end
end
