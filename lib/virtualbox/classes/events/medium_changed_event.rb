module VBox
  class MediumChangedEvent < Event

    attr_reader :ref

    # Attributes

    def medium_attachment
      medium_attachment = VBox::WebService.send_request(:i_medium_changed_event_get_medium_attachment, _this)
      VBox::MediumAttachment.new(medium_attachment)
    end
  end
end