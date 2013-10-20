module VBox
  class Process < Base

    # Attributes

    def pid
      WebService.send_request(:i_process_get_pid, _this)
    end

    def status
      WebService.send_request(:i_process_get_status, _this)
    end

    def exit_code
      WebService.send_request(:i_process_get_exit_code, _this)
    end

    def environment
      WebService.send_request(:i_process_get_environment, _this)
    end

    def arguments
      WebService.send_request(:i_process_get_arguments, _this)
    end

    def executable_path
      WebService.send_request(:i_process_get_executable_path, _this)
    end

    def name
      WebService.send_request(:i_process_get_name, _this)
    end

    # Methods

    def read(args={})
      ensure_hash args
      WebService.send_request(:i_process_read, _this.merge(args))
    end

    def terminate
      WebService.send_request(:i_process_terminate, _this)
    end

    def wait_for(args={})
      ensure_hash args
      WebService.send_request(:i_process_wait_for, _this.merge(args))
    end

    def wait_for_array(args={})
      ensure_hash args
      WebService.send_request(:i_process_wait_for_array, _this.merge(args))
    end

    def write(args={})
      ensure_hash args
      WebService.send_request(:i_process_write, _this.merge(args))
    end

    def write_array(args={})
      ensure_hash args
      WebService.send_request(:i_process_write_array, _this.merge(args))
    end
  end
end