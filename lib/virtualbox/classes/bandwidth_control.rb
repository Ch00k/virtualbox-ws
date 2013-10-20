module VBox
  class BandwidthControl < Base

    # Attributes

    def num_groups
      WebService.send_request(:i_bandwidth_control_get_num_groups, _this)
    end

    # Methods

    def create_bandwidth_group(args={})
      ensure_hash args
      WebService.send_request(:i_bandwidth_contol_create_bandwidth_group, _this.merge(args))
    end

    def delete_bandwidth_group(args={})
      ensure_hash args
      WebService.send_request(:i_bandwidth_control_delete_bandwidth_group, _this.merge(args))
    end

    def get_all_bandwidth_groups
      bandwidth_groups = WebService.send_request(:i_bandwidth_control_get_all_bandwidth_groups, _this)
      bandwidth_groups.map do |bandwidth_group|
        BandwidthGroup.new(bandwidth_group)
      end
    end

    def get_bandwidth_group
      bandwidth_group = WebService.send_request(:i_bandwidth_control_get_bandwidth_group, _this)
      BandwidthGroup.new(bandwidth_group)
    end
  end
end
