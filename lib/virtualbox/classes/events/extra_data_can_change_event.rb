module VBox
  class ExtraDataCanChangeEvent < VetoEvent

    vb_attr :machine_id
    vb_attr :key
    vb_attr :value

  end
end