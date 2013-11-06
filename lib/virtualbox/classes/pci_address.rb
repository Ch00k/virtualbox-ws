module VBox
  class PCIAddress < Base

    vb_attr :bus
    vb_attr :device
    vb_attr :dev_function

    vb_method :as_long
    vb_method :from_long

  end
end
