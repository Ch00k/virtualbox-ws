module VBox
  class HostPCIDevicePlugEvent < MachineEvent

    vb_attr :plugged
    vb_attr :success
    vb_attr :attachment
    vb_attr :message

  end
end