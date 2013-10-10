module VBox
  class SnapshotEvent < MachineEvent

    attr_reader :ref

    # Attributes

    def snapshot_id
      VBox::WebService.send_request(:i_snapshot_event_snapshot_id, _this)
    end
  end
end
