module VBox
  class USBDevice < Base

    vb_attr :id
    vb_attr :vendor_id
    vb_attr :product_id
    vb_attr :revision
    vb_attr :manufacturer
    vb_attr :product
    vb_attr :serial_number
    vb_attr :address
    vb_attr :port
    vb_attr :version
    vb_attr :port_version
    vb_attr :remote

  end
end
