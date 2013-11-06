module VBox
  class Console < Base

    vb_attr :machine
    vb_attr :state
    vb_attr :guest
    vb_attr :keyboard
    vb_attr :mouse
    vb_attr :display
    vb_attr :debugger
    vb_attr :usb_devices, :force_array => true
    vb_attr :remote_usb_devices, :force_array => true
    vb_attr :shared_folders, :force_array => true
    vb_attr :vrde_server_info
    vb_attr :event_source
    vb_attr :attached_pci_devices
    vb_attr :use_host_clipboard
    vb_attr :emulated_usb

    vb_method :adopt_saved_state
    vb_method :attach_usb_device
    vb_method :create_shared_folder
    vb_method :delete_snapshot
    vb_method :delete_snapshot_and_all_children
    vb_method :delete_snapshot_range
    vb_method :detach_usb_device
    vb_method :discard_saved_state
    vb_method :find_usb_device_by_address
    vb_method :find_usb_device_by_id
    vb_method :get_device_activity
    vb_method :get_guest_entered_acpi_mode
    vb_method :get_power_button_handled
    vb_method :pause
    vb_method :power_button
    vb_method :power_down
    vb_method :power_up
    vb_method :power_up_paused
    vb_method :remove_shared_folder
    vb_method :reset
    vb_method :restore_snapshot
    vb_method :resume
    vb_method :save_state
    vb_method :sleep_button
    vb_method :take_snapshot
    vb_method :teleport

  end
end
