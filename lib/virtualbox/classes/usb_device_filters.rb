module VBox
  class USBDeviceFilters < Base

    starts_with_acronym

    vb_attr :device_filters

    vb_method :create_device_filter
    vb_method :insert_device_filter
    vb_method :remove_device_filter

  end
end
