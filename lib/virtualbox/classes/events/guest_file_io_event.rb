module VBox
  class GuestFileIOEvent < GuestFileEvent

    vb_attr :offset
    vb_attr :processed

  end
end