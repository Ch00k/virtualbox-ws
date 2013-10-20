module VBox
  class Guest < Base

    # Attributes

    def os_type_id
      WebService.send_request(:i_guest_get_os_type_id, _this)
    end

    def additions_run_level
      WebService.send_request(:i_guest_get_additions_run_level, _this)
    end

    def additions_version
      WebService.send_request(:i_guest_get_additions_version, _this)
    end

    def additions_revision
      WebService.send_request(:i_guest_get_additions_revision, _this)
    end

    def facilities
      additions_facilities = WebService.send_request(:i_guest_get_facilities, _this)
      additions_facilities.map do |additions_facility|
        AdditionsFacility.new(additions_facility)
      end
    end

    def sessions
      sessions = WebService.send_request(:i_guest_get_sessions, _this)
      sessions.map do |session|
        GuestSession.new(session)
      end
    end

    def memory_balloon_size
      WebService.send_request(:i_guest_get_memory_balloon_size, _this)
    end

    def memory_balloon_size=(memory_balloon_size)
      WebService.send_request(:i_guest_set_memory_balloon_size,
                                    _this.merge(:memory_balloon_size => memory_balloon_size))
    end

    def statistics_update_interval
      WebService.send_request(:i_guest_get_statistics_update_interval, _this)
    end

    def statistics_update_interval=(statistics_update_interval)
      WebService.send_request(:i_guest_set_statistics_update_interval,
                                    _this.merge(:statistics_update_interval => statistics_update_interval))
    end

    # Methods

    def create_session(args={})
      ensure_hash args
      guest_session = WebService.send_request(:i_guest_create_session, _this.merge(args))
      GuestSession.new(guest_session)
    end

    def drag_gh_dropped(args={})
      ensure_hash args
      progress = WebService.send_request(:i_guest_drag_gh_dropped, _this.merge(args))
      Progress.new(progress)
    end

    def drag_gh_get_data
      WebService.send_request(:i_guest_drag_gh_get_data, _this)
    end

    def drag_gh_pending(args={})
      ensure_hash args
      WebService.send_request(:i_guest_drag_gh_pending, _this.merge(args))
    end

    def drag_hg_drop(args={})
      ensure_hash args
      WebService.send_request(:i_guest_drag_hg_drop, _this.merge(args))
    end

    def drag_hg_enter(args={})
      ensure_hash args
      WebService.send_request(:i_guest_drag_hg_enter, _this.merge(args))
    end

    def drag_hg_leave(args={})
      ensure_hash args
      WebService.send_request(:i_guest_drag_hg_leave, _this.merge(args))
    end

    def drag_hg_move(args={})
      ensure_hash args
      WebService.send_request(:i_guest_drag_hg_move, _this.merge(args))
    end

    def drag_hg_put_data(args={})
      ensure_hash args
      progress = WebService.send_request(:i_guest_drag_hg_put_data, _this.merge(args))
      Progress.new(progress)
    end

    def find_session(args={})
      ensure_hash args
      guest_session = WebService.send_request(:i_guest_find_session, _this.merge(args))
      GuestSession.new(guest_session)
    end

    def get_additions_status
      WebService.send_request(:i_guest_get_additions_status, _this)
    end

    def get_facility_status
      WebService.send_request(:i_guest_get_facility_status, _this)
    end

    def internal_get_facility_statistics
      WebService.send_request(:i_guest_internal_get_facility_statistics, _this)
    end

    def set_credentials(args={})
      ensure_hash args
      WebService.send_request(:i_guest_set_credentials, _this.merge(args))
    end

    def update_guest_additions(args={})
      ensure_hash args
      progress = WebService.send_request(:i_guest_update_guest_additions, _this.merge(args))
      Progress.new(progress)
    end
  end
end
