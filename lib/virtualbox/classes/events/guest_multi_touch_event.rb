module VBox
  class GuestMultiTouchEvent < Event

    vb_attr :contact_count
    vb_attr :x_positions, :force_array => true
    vb_attr :y_positions, :force_array => true
    vb_attr :contact_ids, :force_array => true
    vb_attr :contact_flags, :force_array => true
    vb_attr :scan_time

  end
end