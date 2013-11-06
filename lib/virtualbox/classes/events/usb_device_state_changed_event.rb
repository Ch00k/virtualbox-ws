module VBox
  class USBDeviceStateChangedEvent < Event

    starts_with_acronym

    vb_attr :device
    vb_attr :attached
    vb_attr :error

  end
end
