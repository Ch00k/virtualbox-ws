module VBox
  class ExtraDataChangedEvent < VetoEvent

    vb_attr :machine_id
    vb_attr :key
    vb_attr :value

  end
end