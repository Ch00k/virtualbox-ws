module VBox
  class StorageDeviceChangedEvent < Event

    vb_attr :storage_device
    vb_attr :removed
    vb_attr :silent

  end
end
