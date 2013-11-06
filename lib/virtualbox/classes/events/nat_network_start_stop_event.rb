module VBox
  class NATNetworkStartStopEvent < NATNetworkChangedEvent

    starts_with_acronym

    vb_attr :start_event

  end
end