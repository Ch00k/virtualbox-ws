module VBox
  class USBDeviceStateChangedEvent < Event

    vb_attr :device
    vb_attr :attached
    vb_attr :error

  end
end
