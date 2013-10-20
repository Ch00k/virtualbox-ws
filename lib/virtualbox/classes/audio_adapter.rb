module VBox
  class AudioAdapter < Base

    # Attributes

    def enabled
      WebService.send_request(:i_audio_adapter_get_enabled, _this)
    end

    def enabled=(enabled)
      WebService.send_request(:i_audio_adapter_set_enabled, _this.merge(:enabled => enabled))
    end

    def audo_controller
      WebService.send_request(:i_audio_adapter_get_audo_controller, _this)
    end

    def audo_controller=(audo_controller)
      WebService.send_request(:i_audio_adapter_set_audo_controller,
                                    _this.merge(:audo_controller => audo_controller))
    end

    def audo_driver
      WebService.send_request(:i_audio_adapter_get_audo_driver, _this)
    end

    def audo_driver=(audo_driver)
      WebService.send_request(:i_audio_adapter_set_audo_driver, _this.merge(:audo_driver => audo_driver))
    end
  end
end
