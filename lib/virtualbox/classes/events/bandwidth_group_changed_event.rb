module VBox
  class BandwidthGroupChangedEvent < Event

    # Attributes

    def bandwidth_group
      bandwidth_group = WebService.send_request(:i_bandwidth_group_changed_event_get_bandwidth_group, _this)
      BandwidthGroup.new(bandwidth_group)
    end
  end
end