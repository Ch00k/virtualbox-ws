module VBox
  class GuestMonitorChangedEvent < Event

    vb_attr :change_type
    vb_attr :screen_id
    vb_attr :origin_x
    vb_attr :origin_y
    vb_attr :width
    vb_attr :height

  end
end