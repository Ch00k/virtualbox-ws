module VBox
  class GuestPropertyChangedEvent < MachineEvent

    vb_attr :name
    vb_attr :value
    vb_attr :flags

  end
end