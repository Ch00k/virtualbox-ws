module VBox
  class VirtualSystemDescription < Base

    vb_attr :count
    vb_method :add_description
    vb_method :get_description
    vb_method :get_description_by_type
    vb_method :get_values_by_type
    vb_method :set_final_values

  end
end
