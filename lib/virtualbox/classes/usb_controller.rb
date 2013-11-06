module VBox
  class USBController < Base

    starts_with_acronym

    vb_attr :name
    vb_attr :type
    vb_attr :usb_standard

  end
end
