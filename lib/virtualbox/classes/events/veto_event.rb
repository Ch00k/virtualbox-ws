module VBox
  class VetoEvent < Event

    # Methods

    def add_veto(args={})
      ensure_hash args
      WebService.send_request(:i_veto_event_add_veto, _this.merge(args))
    end

    def get_vetos
      WebService.send_request(:i_veto_event_get_vetos, _this)
    end

    def is_vetoed
      WebService.send_request(:i_veto_event_is_vetod, _this)
    end
  end
end
