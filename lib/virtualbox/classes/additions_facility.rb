module VBox
  class AdditionsFacility < Base

    # Attributes

    def class_type
      WebService.send_request(:i_additions_facility_get_class_type, _this)
    end

    def last_updated
      WebService.send_request(:i_additions_facility_get_last_updated, _this)
    end

    def name
      WebService.send_request(:i_additions_facility_get_name, _this)
    end

    def status
      WebService.send_request(:i_additions_facility_get_status, _this)
    end

    def type
      WebService.send_request(:i_additions_facility_get_type, _this)
    end
  end
end
