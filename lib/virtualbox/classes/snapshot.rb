module VBox
  class Snapshot < Base

    # Attributes

    def id
      WebService.send_request(:i_snapshot_filter_get_id, _this)
    end

    def name
      WebService.send_request(:i_snapshot_filter_get_name, _this)
    end

    def name=(name)
      WebService.send_request(:i_snapshot_filter_set_name, _this.merge(:name => name))
    end

    def description
      WebService.send_request(:i_snapshot_filter_get_description, _this)
    end

    def description=(description)
      WebService.send_request(:i_snapshot_filter_set_description, _this.merge(:description => description))
    end

    def timestamp
      WebService.send_request(:i_snapshot_filter_get_timestamp, _this)
    end

    def online
      WebService.send_request(:i_snapshot_filter_get_online, _this)
    end

    def parent
      WebService.send_request(:i_snapshot_filter_get_parent, _this)
    end

    def children
      WebService.send_request(:i_snapshot_filter_get_children, _this)
    end
  end
end
