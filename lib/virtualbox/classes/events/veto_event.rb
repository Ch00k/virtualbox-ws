module VBox
  class VetoEvent < Event

    attr_reader :ref

    # Methods

    def add_veto(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_veto_event_add_veto, _this.merge(args))
    end

    def get_vetos
      VBox::WebService.send_request(:i_veto_event_get_vetos, _this)
    end

    def is_vetoed
      VBox::WebService.send_request(:i_veto_event_is_vetod, _this)
    end
  end
end
