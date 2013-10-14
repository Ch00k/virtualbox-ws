module VBox
  class BandwidthGroupChangedEvent < Event

    # Attributes

    def bandwidth_group
      bandwidth_group = VBox::WebService.send_request(:i_bandwidth_group_changed_event_get_bandwidth_group, _this)
      VBox::BandwidthGroup.new(bandwidth_group)
    end
  end
end