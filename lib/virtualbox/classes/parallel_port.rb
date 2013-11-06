module VBox
  class ParallelPort < Base

    vb_attr :slot
    vb_attr :enabled
    vb_attr :io_base, :force_tag => 'IOBase'
    vb_attr :irq
    vb_attr :path

  end
end
