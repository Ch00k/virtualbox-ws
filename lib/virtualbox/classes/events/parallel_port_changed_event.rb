module VBox
  class ParallelPortChangedEvent < Event

    # Attributes

    def parallel_port
      parallel_port = WebService.send_request(:i_parallel_port_changed_event_get_parallel_port, _this)
      ParallelPort.new(parallel_port)
    end
  end
end
