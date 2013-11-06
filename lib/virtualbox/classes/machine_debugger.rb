module VBox
  class MachineDebugger < Base

    vb_attr :single_step
    vb_attr :recompile_user
    vb_attr :recompile_supervisor
    vb_attr :execute_all_in_iem
    vb_attr :patm_enabled, :force_tag => 'PATMEnabled'
    vb_attr :csam_enabled, :force_tag => 'CSAMEnabled'
    vb_attr :log_enabled
    vb_attr :log_dbg_flags
    vb_attr :log_dbg_groups
    vb_attr :log_dbg_destinations
    vb_attr :log_rel_flags
    vb_attr :log_rel_groups
    vb_attr :log_rel_destinations
    vb_attr :hw_virt_ex_enabled
    vb_attr :hw_virt_ex_nested_paging_enabled
    vb_attr :hw_virt_ex_vpid_enabled
    vb_attr :hw_virt_ex_ux_enabled
    vb_attr :os_name
    vb_attr :os_version
    vb_attr :pae_enabled
    vb_attr :virtual_time_rate
    vb_attr :vm

    vb_method :detect_os
    vb_method :dump_guest_core
    vb_method :dump_guest_stack
    vb_method :dump_host_process_core
    vb_method :dump_stats
    vb_method :get_register
    vb_method :get_registers
    vb_method :get_stats
    vb_method :info
    vb_method :inject_nmi
    vb_method :modify_log_destinations
    vb_method :modify_log_flags
    vb_method :modify_log_groups
    vb_method :read_physical_memory
    vb_method :read_virtual_memory
    vb_method :reset_stats
    vb_method :set_register
    vb_method :set_registers
    vb_method :write_physical_memory
    vb_method :write_virtual_memory

  end
end
