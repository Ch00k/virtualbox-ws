module VBox
  class USBDeviceFilter < Base

    starts_with_acronym

    vb_attr :name
    vb_attr :active
    vb_attr :vendor_id
    vb_attr :product_id
    vb_attr :revision
    vb_attr :manufacturer
    vb_attr :product
    vb_attr :serial_number
    vb_attr :port
    vb_attr :remote
    vb_attr :masked_interfaces

  end
end
