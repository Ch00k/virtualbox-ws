module VBox
  class EmulatedUSB < Base

    vb_attr :webcams

    vb_method :webcam_attach
    vb_method :webcam_detach

  end
end
