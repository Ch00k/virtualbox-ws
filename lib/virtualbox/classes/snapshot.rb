module VBox
  class Snapshot < Base

    attr_reader :ref

    # Attributes

    def id
      VBox::WebService.send_request(:i_snapshot_filter_get_id, _this)
    end

    def name
      VBox::WebService.send_request(:i_snapshot_filter_get_name, _this)
    end

    def name=(name)
      VBox::WebService.send_request(:i_snapshot_filter_set_name, _this.merge(:name => name))
    end

    def description
      VBox::WebService.send_request(:i_snapshot_filter_get_description, _this)
    end

    def description=(description)
      VBox::WebService.send_request(:i_snapshot_filter_set_description, _this.merge(:description => description))
    end

    def timestamp
      VBox::WebService.send_request(:i_snapshot_filter_get_timestamp, _this)
    end

    def online
      VBox::WebService.send_request(:i_snapshot_filter_get_online, _this)
    end

    def parent
      VBox::WebService.send_request(:i_snapshot_filter_get_parent, _this)
    end

    def children
      VBox::WebService.send_request(:i_snapshot_filter_get_children, _this)
    end
  end
end
