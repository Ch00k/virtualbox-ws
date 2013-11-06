module VBox
  class Guest < Base

    vb_attr :so_type_id
    vb_attr :additions_run_level
    vb_attr :additions_version
    vb_attr :additions_revision
    vb_attr :event_source
    vb_attr :additions_facility
    vb_attr :sessions, :force_array => true
    vb_attr :memory_balloon_size
    vb_attr :statistics_update_interval

    vb_method :create_session
    vb_method :drag_gh_dropped
    vb_method :drag_gh_get_data
    vb_method :drag_gh_pending
    vb_method :drag_hg_drop
    vb_method :drag_hg_enter
    vb_method :drag_hg_leave
    vb_method :drag_hg_move
    vb_method :drag_hg_put_data
    vb_method :find_session
    vb_method :get_additions_status
    vb_method :get_facility_status
    vb_method :internal_get_statistics
    vb_method :set_credentials
    vb_method :update_guest_additions

  end
end
