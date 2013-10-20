module VBox
  class SnapshotEvent < MachineEvent

    # Attributes

    def snapshot_id
      WebService.send_request(:i_snapshot_event_snapshot_id, _this)
    end
  end
end
