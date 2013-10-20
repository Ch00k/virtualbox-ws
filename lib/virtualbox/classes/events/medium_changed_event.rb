module VBox
  class MediumChangedEvent < Event

    # Attributes

    def medium_attachment
      medium_attachment = WebService.send_request(:i_medium_changed_event_get_medium_attachment, _this)
      MediumAttachment.new(medium_attachment)
    end
  end
end