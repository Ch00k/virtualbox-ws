module VBox
  class BandwidthControl < Base

    attr_reader :ref

    # Attributes

    def num_groups
      VBox::WebService.send_request(:i_bandwidth_control_get_num_groups, _this)
    end

    # Methods

    def create_bandwidth_group(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_bandwidth_contol_create_bandwidth_group, _this.merge(args))
    end

    def delete_bandwidth_group(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_bandwidth_control_delete_bandwidth_group, _this.merge(args))
    end

    def get_all_bandwidth_groups
      bandwidth_groups = VBox::WebService.send_request(:i_bandwidth_control_get_all_bandwidth_groups, _this)
      bandwidth_groups.map do |bandwidth_group|
        VBox::BandwidthGroup.new(bandwidth_group)
      end
    end

    def get_bandwidth_group
      bandwidth_group = VBox::WebService.send_request(:i_bandwidth_control_get_bandwidth_group, _this)
      VBox::BandwidthGroup.new(bandwidth_group)
    end
  end
end
