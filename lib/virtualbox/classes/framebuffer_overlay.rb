module VBox
  class FramebufferOverlay < Framebuffer

    vb_attr :x
    vb_attr :y
    vb_attr :visible
    vb_attr :alpha

    vb_method :move

  end
end