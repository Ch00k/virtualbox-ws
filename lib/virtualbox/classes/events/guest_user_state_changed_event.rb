module VBox
  class GuestUserStateChangedEvent < Event

    vb_attr :name
    vb_attr :domain
    vb_attr :state
    vb_attr :state_details

  end
end