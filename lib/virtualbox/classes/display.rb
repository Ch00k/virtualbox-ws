module VBox
  class Display < Base

    # Methods

    def get_screen_resolution(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_get_screen_resolution, _this.merge(args))
    end

    def invalidate_and_update
      VBox::WebService.send_request(:i_display_invalidate_and_update, _this)
    end

    def resize_completed(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_resize_completed, _this.merge(args))
    end

    def set_seamless_mode(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_set_seamless_mode, _this.merge(args))
    end

    def set_video_mode_hint(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_set_video_mode_hint, _this.merge(args))
    end

    def take_screen_shot_png_to_array(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_take_screen_shot_png_to_array, _this.merge(args))
    end

    def take_screen_shot_to_array(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_take_screen_shot_to_array, _this.merge(args))
    end

    def viewport_changed(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_display_viewport_changed, _this.merge(args))
    end
  end
end
