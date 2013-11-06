module VBox
  class Framebuffer < Base

    vb_attr :address
    vb_attr :width
    vb_attr :height
    vb_attr :bits_per_pixel
    vb_attr :bytes_per_line
    vb_attr :pixel_format
    vb_attr :uses_guest_vram
    vb_attr :height_reduction
    vb_attr :overlay
    vb_attr :win_id

    vb_method :lock
    vb_method :notify_update
    vb_method :unlock


  end
end
