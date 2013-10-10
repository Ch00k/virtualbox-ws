module VBox
  class PerformanceMetric < Base

    attr_reader :ref

    # Attributes

    def metric_name
      VBox::WebService.send_request(:i_performance_metric_get_metric_name, _this)
    end

    def object
      VBox::WebService.send_request(:i_performance_metric_get_object, _this)
    end

    def description
      VBox::WebService.send_request(:i_performance_metric_get_description, _this)
    end

    def period
      VBox::WebService.send_request(:i_performance_metric_get_period, _this)
    end

    def count
      VBox::WebService.send_request(:i_performance_metric_get_count, _this)
    end

    def unit
      VBox::WebService.send_request(:i_performance_metric_get_unit, _this)
    end

    def minimum_value
      VBox::WebService.send_request(:i_performance_metric_get_minimum_value, _this)
    end

    def maximum_value
      VBox::WebService.send_request(:i_performance_metric_get_maximum_value, _this)
    end
  end
end
