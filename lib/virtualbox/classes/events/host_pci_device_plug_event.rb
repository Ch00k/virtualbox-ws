module VBox
  class HostPCIDevicePlugEvent < MachineEvent

    # Attributes

    def plugged
      WebService.send_request(:i_host_pci_device_plug_event_get_plugged, _this)
    end

    def success
      WebService.send_request(:i_host_pci_device_plug_event_get_success, _this)
    end

    def attachment
      WebService.send_request(:i_host_pci_device_plug_event_get_attachment, _this)
    end

    def message
      WebService.send_request(:i_host_pci_device_plug_event_get_message, _this)
    end
  end
end