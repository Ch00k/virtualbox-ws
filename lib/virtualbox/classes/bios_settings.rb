module VBox
  class BIOSSettings < Base

    vb_attr :logo_fade_in
    vb_attr :logo_fade_out
    vb_attr :logo_display_time
    vb_attr :logo_image_path
    vb_attr :boot_menu_mode
    vb_attr :acpi_enabled, :force_tag => 'ACPIEnabled'
    vb_attr :ioapic_enabled, :force_tag => 'IOAPICEnabled'
    vb_attr :time_offset
    vb_attr :pxe_debug_enabled, :force_tag => 'PXEDebugEnabled'
    vb_attr :non_volatile_storage_file

  end
end
