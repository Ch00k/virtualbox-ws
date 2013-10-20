module VBox
  class PerformanceMetric < Base

    # Attributes

    def metric_name
      WebService.send_request(:i_performance_metric_get_metric_name, _this)
    end

    def object
      WebService.send_request(:i_performance_metric_get_object, _this)
    end

    def description
      WebService.send_request(:i_performance_metric_get_description, _this)
    end

    def period
      WebService.send_request(:i_performance_metric_get_period, _this)
    end

    def count
      WebService.send_request(:i_performance_metric_get_count, _this)
    end

    def unit
      WebService.send_request(:i_performance_metric_get_unit, _this)
    end

    def minimum_value
      WebService.send_request(:i_performance_metric_get_minimum_value, _this)
    end

    def maximum_value
      WebService.send_request(:i_performance_metric_get_maximum_value, _this)
    end
  end
end
