module VBox
  class NATNetworkChangedEvent < Event

    starts_with_acronym

    vb_attr :network_name

  end
end