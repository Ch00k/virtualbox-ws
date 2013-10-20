module VBox
  class NetworkAdapterChangedEvent < Event

    # Attributes

    def network_adapter
      network_adapter = WebService.send_request(:i_network_adapter_changed_event_get_network_adapter, _this)
      NetworkAdapter.new(network_adapter)
    end
  end
end
