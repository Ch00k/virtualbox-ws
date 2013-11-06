module VBox
  class GuestFileReadEvent < GuestFileIOEvent

    vb_attr :data, :force_array => true
  end
end