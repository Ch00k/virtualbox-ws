module VBox
  class Display < Base

    vb_method :get_framebuffer
    vb_method :get_screen_resolution
    vb_method :invalidate_and_update
    vb_method :resize_completed
    vb_method :set_framebuffer
    vb_method :set_seamless_mode
    vb_method :set_video_mode_hint
    vb_method :take_screen_shot_png_to_array
    vb_method :take_screen_shotto_array
    vb_method :viewport_changed

  end
end
