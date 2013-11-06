module VBox
  class GuestProcessEvent < GuestSessionEvent

    vb_attr :process
    vb_attr :pid

  end
end