module VBox
  class BandwidthControl < Base

    vb_attr :num_groups

    vb_method :create_bandwidth_group
    vb_method :delete_bandwidth_group
    vb_method :get_all_bandwidth_groups, :force_array => true
    vb_method :get_bandwidth_group

  end
end
