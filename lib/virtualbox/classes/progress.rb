module VBox
  class Progress < Base

    attr_reader :ref

    # Attributes

    def id
      VBox::WebService.send_request(:i_progress_get_id, _this)
    end

    def description
      VBox::WebService.send_request(:i_progress_get_description, _this)
    end

    def initiator
      VBox::WebService.send_request(:i_progress_get_initiator, _this)
    end

    def cancelable
      VBox::WebService.send_request(:i_progress_get_cancelable, _this)
    end

    def percent
      VBox::WebService.send_request(:i_progress_get_percent, _this)
    end

    def time_remaining
      VBox::WebService.send_request(:i_progress_get_time_remaining, _this)
    end

    def completed
      VBox::WebService.send_request(:i_progress_get_completed, _this)
    end

    def canceled
      VBox::WebService.send_request(:i_progress_get_canceled, _this)
    end

    def result_code
      VBox::WebService.send_request(:i_progress_get_result_code, _this)
    end

    def error_info
      error_info = VBox::WebService.send_request(:i_progress_get_error_info, _this)
      VBox::VirtualBoxErrorInfo.new(error_info)
    end

    def operation_count
      VBox::WebService.send_request(:i_progress_get_operation_count, _this)
    end

    def operation
      VBox::WebService.send_request(:i_progress_get_operation, _this)
    end

    def operation_description
      VBox::WebService.send_request(:i_progress_get_operation_description, _this)
    end

    def operation_percent
      VBox::WebService.send_request(:i_progress_get_operation_percent, _this)
    end

    def operation_weight
      VBox::WebService.send_request(:i_progress_get_operation_weight, _this)
    end

    def timeout
      VBox::WebService.send_request(:i_progress_get_timeout, _this)
    end

    def timeout=(timeout)
      VBox::WebService.send_request(:i_progress_set_timeout, _this.merge(:timeout => timeout))
    end

    # Methods

    def cancel
      VBox::WebService.send_request(:i_progress_cancel, _this)
    end

    def set_current_operation_progress(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_progress_set_current_operation_progress, _this.merge(args))
    end

    def set_next_operation(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_progress_set_next_operation, _this.merge(args))
    end

    def wait_for_async_progress_completion(args={})
      ensure_hash(args)
      if args.has_key?(:p_progress_async) & args[:p_progress_async].respond_to?(:ref)
        args[:p_progress_async] = args[:p_progress_async].ref
      end
      VBox::WebService.send_request(:i_progress_wait_for_async_progress_completion, _this.merge(args))
    end

    def wait_for_completion(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_progress_wait_for_completion, _this.merge(args))
    end

    def wait_for_operation_completion(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_progress_wait_for_operation_completion, _this.merge(args))
    end
  end
end
