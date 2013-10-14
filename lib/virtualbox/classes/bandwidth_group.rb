module VBox
  class BandwidthGroup < Base

    # Attributes

    def name
      VBox::WebService.send_request(:i_bandwidth_group_get_name, _this)
    end

    def type
      VBox::WebService.send_request(:i_bandwidth_group_get_type, _this)
    end

    def reference
      VBox::WebService.send_request(:i_bandwidth_group_get_reference, _this)
    end

    def max_bytes_per_sec
      VBox::WebService.send_request(:i_bandwidth_group_get_max_bytes_per_sec, _this)
    end

    def max_bytes_per_sec=(max_bytes_per_sec)
      VBox::WebService.send_request(:i_bandwidth_group_get_max_bytes_per_sec,
                                    _this.merge(:max_bytes_per_sec => max_bytes_per_sec))
    end
  end
end
