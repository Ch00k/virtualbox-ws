module VBox
  class Session < Base

    vb_attr :state
    vb_attr :type
    vb_attr :machine
    vb_attr :console

    vb_method :unlock_machine

  end
end
