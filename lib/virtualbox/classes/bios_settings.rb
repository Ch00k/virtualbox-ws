module VBox
  class BIOSSettings < Base

    # Attributes

    def logo_fade_in
      VBox::WebService.send_request(:ibios_settings_get_logo_fade_in, _this)
    end

    def logo_fade_in=(logo_fade_in)
      VBox::WebService.send_request(:ibios_settings_set_logo_fade_in, _this.merge(:logo_fade_in => logo_fade_in))
    end

    def logo_fade_out
      VBox::WebService.send_request(:ibios_settings_get_logo_fade_out, _this)
    end

    def logo_fade_out=(logo_fade_out)
      VBox::WebService.send_request(:ibios_settings_set_logo_fade_out, _this.merge(:logo_fade_out => logo_fade_out))
    end

    def logo_display_time
      VBox::WebService.send_request(:ibios_settings_get_logo_display_time, _this)
    end

    def logo_display_time=(logo_display_time)
      VBox::WebService.send_request(:ibios_settings_set_logo_display_time,
                                    _this.merge(:logo_display_time => logo_display_time))
    end

    def logo_image_path
      VBox::WebService.send_request(:ibios_settings_get_logo_image_path, _this)
    end

    def logo_image_path=(logo_image_path)
      VBox::WebService.send_request(:ibios_settings_set_logo_image_path, _this.merge(:logo_image_path => logo_image_path))
    end

    def boot_menu_mode
      VBox::WebService.send_request(:ibios_settings_get_boot_menu_mode, _this)
    end

    def boot_menu_mode=(boot_menu_mode)
      VBox::WebService.send_request(:ibios_settings_set_boot_menu_mode, _this.merge(:boot_menu_mode => boot_menu_mode))
    end

    def acpi_enabled
      VBox::WebService.send_request(:ibios_settings_get_acpi_enabled, _this)
    end

    def acpi_enabled=(acpi_enabled)
      VBox::WebService.send_request(:ibios_settings_set_acpi_enabled, _this.merge('ACPIEnabled' => acpi_enabled))
    end

    def ioapic_enabled
      VBox::WebService.send_request(:ibios_settings_get_ioapic_enabled, _this)
    end

    def ioapic_enabled=(ioapic_enabled)
      VBox::WebService.send_request(:ibios_settings_set_ioapic_enabled, _this.merge('IOAPICEnabled' => ioapic_enabled))
    end

    def time_offset
      VBox::WebService.send_request(:ibios_settings_get_time_offset, _this)
    end

    def time_offset=(time_offset)
      VBox::WebService.send_request(:ibios_settings_set_time_offset, _this.merge(:time_offset => time_offset))
    end

    def pxe_debug_enabled
      VBox::WebService.send_request(:ibios_settings_get_pxe_debug_enabled, _this)
    end

    def pxe_debug_enabled=(pxe_debug_enabled)
      VBox::WebService.send_request(:ibios_settings_set_pxe_debug_enabled, _this.merge('PXEDebugEnabled' => pxe_debug_enabled))
    end
  end
end
