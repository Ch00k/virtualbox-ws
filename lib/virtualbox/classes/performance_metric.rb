module VBox
  class PerformanceMetric < Base

    vb_attr :metric_name
    vb_attr :object
    vb_attr :description
    vb_attr :period
    vb_attr :count
    vb_attr :unit
    vb_attr :minimum_value
    vb_attr :maximum_value

  end
end
