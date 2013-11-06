module VBox
  class Event < Base

    vb_attr :type
    vb_attr :source
    vb_attr :writable

    vb_method :set_processed
    vb_method :wait_processed

  end
end
