module VBox
  class GuestProcessStateChangedEvent < GuestProcessEvent

    vb_attr :status
    vb_attr :error

  end
end