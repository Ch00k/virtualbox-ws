module VBox
  class GuestMouseEvent < ReusableEvent

    vb_attr :mode
    vb_attr :x
    vb_attr :y
    vb_attr :z
    vb_attr :w
    vb_attr :buttons

  end
end