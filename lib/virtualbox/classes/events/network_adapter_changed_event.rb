module VBox
  class NetworkAdapterChangedEvent < Event

    attr_reader :ref

    # Attributes

    def network_adapter
      network_adapter = VBox::WebService.send_request(:i_network_adapter_changed_event_get_network_adapter, _this)
      VBox::NetworkAdapter.new(network_adapter)
    end
  end
end
