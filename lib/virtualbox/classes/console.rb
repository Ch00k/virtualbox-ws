module VBox
  class Console < Base

    # Attributes

    def machine
      machine = WebService.send_request(:i_console_get_machine, _this)
      Machine.new(machine)
    end

    def state
      WebService.send_request(:i_console_get_machine_state, _this)
    end

    def guest
      guest = WebService.send_request(:i_console_get_guest, _this)
      Guest.new(guest)
    end

    def keyboard
      guest = WebService.send_request(:i_console_get_keyboard, _this)
      Keyboard.new(guest)
    end

    def mouse
      guest = WebService.send_request(:i_console_get_mouse, _this)
      Mouse.new(guest)
    end

    def remote_usb_devices
      remote_usb_devices = WebService.send_request(:i_console_get_remote_usb_devices, _this)
      remote_usb_devices.map do |remote_usb_device|
        HostUSBDevice.new(remote_usb_device)
      end
    end

    def shared_folders
      shared_folders = WebService.send_request(:i_console_get_shared_folders, _this)
      shared_folders.map do |shared_folder|
        SharedFolder.new(shared_folder)
      end
    end

    def vrde_server_info
      vrde_server_info = WebService.send_request(:i_console_get_vrde_server_info, _this)
      VRDEServerInfo.new(vrde_server_info)
    end

    def event_source
      event_source = WebService.send_request(:i_console_get_event_source, _this)
      EventSource.new(event_source)
    end

    def attached_pci_devices
      WebService.send_request(:i_console_get_attached_pci_devices, _this)
    end

    def use_host_clipboard
      WebService.send_request(:i_console_get_use_host_clipboard, _this)
    end

    def use_host_clipboard=(use_host_clipboard)
      WebService.send_request(:i_console_set_use_host_clipboard,
                                    _this.merge(:use_host_clipboard => use_host_clipboard))
    end

    # Methods

    def adopt_saved_state(args={})
      ensure_hash args
      WebService.send_request(:i_console_adopt_saved_state, _this.merge(args))
    end

    def attach_usb_device(args={})
      ensure_hash args
      WebService.send_request(:i_console_attach_usb_device, _this.merge(args))
    end

    def create_shared_folder(args={})
      ensure_hash args
      WebService.send_request(:i_console_create_shared_folder, _this.merge(args))
    end

    def delete_snapshot(args={})
      ensure_hash args
      progress = WebService.send_request(:i_console_delete_snapshot, _this.merge(args))
      Progress.new(progress)
    end

    def delete_snapshot_and_all_children(args={})
      ensure_hash args
      progress = WebService.send_request(:i_console_delete_snapshot_and_all_children, _this.merge(args))
      Progress.new(progress)
    end

    def delete_snapshot_range(args={})
      ensure_hash args
      progress = WebService.send_request(:i_console_delete_snapshot_range, _this.merge(args))
      Progress.new(progress)
    end

    def detach_usb_device(args={})
      ensure_hash args
      usb_device = WebService.send_request(:i_console_detach_usb_device, _this.merge(args))
      USBDevice.new(usb_device)
    end

    def discard_saved_state(args={})
      ensure_hash args
      WebService.send_request(:i_console_discard_saved_state, _this.merge(args))
    end

    def find_usb_device_by_address(args={})
      ensure_hash args
      usb_device = WebService.send_request(:i_console_find_usb_device_by_address, _this.merge(args))
      USBDevice.new(usb_device)
    end

    def find_usb_device_by_id(args={})
      ensure_hash args
      usb_device = WebService.send_request(:i_console_find_usb_device_by_id, _this.merge(args))
      USBDevice.new(usb_device)
    end

    def get_device_activity(args={})
      ensure_hash args
      WebService.send_request(:i_console_get_device_activity, _this.merge(args))
    end

    def get_guest_entered_acpi_mode
      WebService.send_request(:i_console_get_guest_entered_acpi_mode, _this)
    end

    def get_power_button_handled
      WebService.send_request(:i_console_get_power_button_handled, _this)
    end

    def pause
      WebService.send_request(:i_console_pause, _this)
    end

    def power_button
      WebService.send_request(:i_console_power_button, _this)
    end

    def power_down
      progress = WebService.send_request(:i_console_power_down, _this)
      Progress.new(progress)
    end

    def power_up
      progress = WebService.send_request(:i_console_power_up, _this)
      Progress.new(progress)
    end

    def power_up_paused
      progress = WebService.send_request(:i_console_power_up_paused, _this)
      Progress.new(progress)
    end

    def remove_shared_folder(args={})
      ensure_hash args
      WebService.send_request(:i_console_remove_shared_folder, _this.merge(args))
    end

    def reset
      WebService.send_request(:i_console_reset, _this)
    end

    def restore_snapshot(args={})
      ensure_hash args
      progress = WebService.send_request(:i_console_restore_snapshot, _this.merge(args))
      Progress.new(progress)
    end

    def resume
      WebService.send_request(:i_console_resume, _this)
    end

    def save_state
      progress = WebService.send_request(:i_console_save_state, _this)
      Progress.new(progress)
    end

    def sleep_button
      WebService.send_request(:i_console_sleep_button, _this)
    end

    def take_snapshot
      progress = WebService.send_request(:i_console_take_snapshot, _this)
      Progress.new(progress)
    end

    def teleport(args={})
      progress = WebService.send_request(:i_console_teleport, _this.merge(args))
      Progress.new(progress)
    end
  end
end
