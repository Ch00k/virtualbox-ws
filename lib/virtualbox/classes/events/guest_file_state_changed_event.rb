module VBox
  class GuestFileStateChangedEvent < GuestFileEvent

    vb_attr :status
    vb_attr :error

  end
end