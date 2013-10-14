module VBox
  class PerformanceCollector < Base

    # Attributes

    def metric_names
      VBox::WebService.send_request(:i_performance_collector_get_metric_names, _this)
    end

    # Methods

    def disable_metrics(args={})
      ensure_hash args
      performance_metrics = VBox::WebService.send_request(:i_performance_collector_disable_metrics, _this.merge(args))
      performance_metrics.map do |performance_metric|
        VBox::PerformanceMatric.new(performance_metric)
      end
    end

    def enable_metrics(args={})
      ensure_hash args
      performance_metrics = VBox::WebService.send_request(:i_performance_collector_enable_metrics, _this.merge(args))
      performance_metrics.map do |performance_metric|
        VBox::PerformanceMatric.new(performance_metric)
      end
    end

    def get_metrics(args={})
      ensure_hash args
      performance_metrics = VBox::WebService.send_request(:i_performance_collector_get_metrics, _this.merge(args))
      performance_metrics.map do |performance_metric|
        VBox::PerformanceMatric.new(performance_metric)
      end
    end

    def query_metrics_data(args={})
      ensure_hash args
      VBox::WebService.send_request(:i_performance_collector_query_metrics_data, _this.merge(args))
    end

    def setup_metrics(args={})
      ensure_hash args
      performance_metrics = VBox::WebService.send_request(:i_performance_collector_setup_metrics, _this.merge(args))
      performance_metrics.map do |performance_metric|
        VBox::PerformanceMatric.new(performance_metric)
      end
    end
  end
end
