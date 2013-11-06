module VBox
  class CPUChangedEvent < Event

    starts_with_acronym

    vb_attr :cpu
    vb_attr :add

  end
end