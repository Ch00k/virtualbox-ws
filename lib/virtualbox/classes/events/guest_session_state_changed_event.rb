module VBox
  class GuestSessionStateChangedEvent < GuestSessionEvent

    vb_attr :id
    vb_attr :status
    vb_attr :error

  end
end