module VBox
  class Keyboard < Base

    attr_reader :ref

    # Attributes

    def event_source
      event_source = VBox::WebService.send_request(:i_keyboard_get_event_source, _this)
      VBox::EventSource.new(event_source)
    end

    # Methods

    def put_cad
      VBox::WebService.send_request(:i_keyboard_get_put_cad, _this)
    end

    def put_scancode(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_keyboard_get_put_scancode, _this.merge(args))
    end

    def put_scancodes(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_keyboard_get_put_scancodes, _this.merge(args))
    end
  end
end
