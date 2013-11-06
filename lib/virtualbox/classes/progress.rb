module VBox
  class Progress < Base

    vb_attr :id
    vb_attr :description
    vb_attr :initiator
    vb_attr :cancelable
    vb_attr :percent
    vb_attr :time_remaining
    vb_attr :completed
    vb_attr :canceled
    vb_attr :result_code
    vb_attr :error_info
    vb_attr :operation_count
    vb_attr :operation
    vb_attr :operation_description
    vb_attr :operation_percent
    vb_attr :operation_weight
    vb_attr :timeout

    vb_method :cancel
    vb_method :set_current_operation_progress
    vb_method :set_next_operation
    vb_method :wait_for_async_progress_completion
    vb_method :wait_for_completion
    vb_method :wait_for_operation_completion

  end
end
