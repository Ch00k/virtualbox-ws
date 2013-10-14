module VBox
  class HostPCIDevicePlugEvent < MachineEvent

    # Attributes

    def plugged
      VBox::WebService.send_request(:i_host_pci_device_plug_event_get_plugged, _this)
    end

    def success
      VBox::WebService.send_request(:i_host_pci_device_plug_event_get_success, _this)
    end

    def attachment
      VBox::WebService.send_request(:i_host_pci_device_plug_event_get_attachment, _this)
    end

    def message
      VBox::WebService.send_request(:i_host_pci_device_plug_event_get_message, _this)
    end
  end
end