module VBox
  class PerformanceCollector < Base

    vb_attr :metric_names

    vb_method :disable_metrics, :force_array => true
    vb_method :enable_metrics, :force_array => true
    vb_method :get_metrics, :force_array => true
    vb_method :query_metics_data, :force_array => true
    vb_method :setup_metrics, :force_array => true

  end
end
