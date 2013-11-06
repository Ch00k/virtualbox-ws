module VBox
  class VetoEvent < Event

    vb_method :add_veto
    vb_method :get_vetos, :force_array => true
    vb_method :is_vetoed

  end
end
