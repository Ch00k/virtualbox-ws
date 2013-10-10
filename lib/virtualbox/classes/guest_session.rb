module VBox
  class GuestSession < Base

    attr_reader :ref

    # Attributes

    def user
      VBox::WebService.send_request(:i_guest_session_get_user, _this)
    end

    def domain
      VBox::WebService.send_request(:i_guest_session_get_domain, _this)
    end

    def name
      VBox::WebService.send_request(:i_guest_session_get_name, _this)
    end

    def id
      VBox::WebService.send_request(:i_guest_session_get_id, _this)
    end

    def timeout
      VBox::WebService.send_request(:i_guest_session_get_timeout, _this)
    end

    def timeout=(timeout)
      VBox::WebService.send_request(:i_guest_session_set_timeout, _this.merge(:timeout => timeout))
    end

    def environment
      VBox::WebService.send_request(:i_guest_session_get_environment, _this)
    end

    def environment=(environment)
      VBox::WebService.send_request(:i_guest_session_set_environment, _this.merge(:environment => environment))
    end

    #TODO IGuestProcess has no methods
    def processes
      guest_processes = VBox::WebService.send_request(:i_guest_session_get_processes, _this)
      guest_processes.map do |guest_process|
        VBox::GuestProcess.new(guest_process)
      end
    end

    #TODO IGuestDirectory has no methods
    def directories
      directories = VBox::WebService.send_request(:i_guest_session_get_directories, _this)
      directories.map do |directory|
        VBox::GuestDirectory.new(directory)
      end
    end

    #TODO IGuestFile has no methods
    def files
      files = VBox::WebService.send_request(:i_guest_session_get_files, _this)
      files.map do |file|
        VBox::GuestFile.new(file)
      end
    end

    # Methods

    def close
      VBox::WebService.send_request(:i_guest_session_close, _this)
    end

    def copy_from(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_guest_session_copy_from, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def copy_to(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_guest_session_copy_to, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def directory_create(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_directory_create, _this.merge(args))
    end

    def directory_create_temp(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_directory_create_temp, _this.merge(args))
    end

    def directory_exists(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_directory_exists, _this.merge(args))
    end

    #TODO IGuestDirectory has no methods
    def directory_open(args={})
      ensure_hash(args)
      guest_directory = VBox::WebService.send_request(:i_guest_session_directory_open, _this.merge(args))
      VBox::GuestDirectory.new(guest_directory)
    end

    #TODO IGuestFsObjInfo has no methods
    def directory_query_info(args={})
      ensure_hash(args)
      fs_obj_info = VBox::WebService.send_request(:i_guest_session_directory_query_info, _this.merge(args))
      VBox::GuestFsObjInfo.new(fs_obj_info)
    end

    def directory_remove(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_directory_remove, _this.merge(args))
    end

    def directory_remove_recursive(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:i_guest_session_directory_remove_recursive, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def directory_rename(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_directory_rename, _this.merge(args))
    end

    def directory_set_acl(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_directory_set_acl, _this.merge(args))
    end

    def environment_clear
      VBox::WebService.send_request(:i_guest_session_environment_clear, _this)
    end

    def environment_get(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_environment_get, _this.merge(args))
    end

    def environment_set(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_environment_set, _this.merge(args))
    end

    def environment_unset(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_environment_unset, _this.merge(args))
    end

    #TODO IGuestFile has no methods
    def file_create_temp(args={})
      ensure_hash(args)
      guest_file = VBox::WebService.send_request(:i_guest_session_file_create_temp, _this.merge(args))
      VBox::GuestFile.new(guest_file)
    end

    def file_exists(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_file_exists, _this.merge(args))
    end

    #TODO IGuestFile has no methods
    def file_open(args={})
      ensure_hash(args)
      guest_file = VBox::WebService.send_request(:i_guest_session_file_open, _this.merge(args))
      VBox::GuestFile.new(guest_file)
    end

    #TODO IGuestFsObjInfo has no methods
    def file_query_info(args={})
      ensure_hash(args)
      fs_obj_info = VBox::WebService.send_request(:i_guest_session_file_query_info, _this.merge(args))
      VBox::GuestFsObjInfo.new(fs_obj_info)
    end

    def file_query_size(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_file_query_size, _this.merge(args))
    end

    def file_remove(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_file_remove, _this.merge(args))
    end

    def file_rename(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_file_rename, _this.merge(args))
    end

    def file_set_acl(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_file_set_acl, _this.merge(args))
    end

    #TODO IGuestProcess has no methods
    def process_create(args={})
      ensure_hash(args)
      guest_process = VBox::WebService.send_request(:i_guest_session_process_create, _this.merge(args))
      VBox::GuestProcess.new(guest_process)
    end

    #TODO IGuestProcess has no methods
    def process_create_ex(args={})
      ensure_hash(args)
      guest_process = VBox::WebService.send_request(:i_guest_session_process_create_ex, _this.merge(args))
      VBox::GuestProcess.new(guest_process)
    end

    #TODO IGuestProcess has no methods
    def process_get(args={})
      ensure_hash(args)
      guest_process = VBox::WebService.send_request(:i_guest_session_process_get, _this.merge(args))
      VBox::GuestProcess.new(guest_process)
    end

    def symlink_create(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_symlink_create, _this.merge(args))
    end

    def symlink_exists(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_symlink_exists, _this.merge(args))
    end

    def symlink_read(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_symlink_read, _this.merge(args))
    end

    def symlink_remove_directory(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_symlink_remove_directory, _this.merge(args))
    end

    def symlink_remove_file(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_guest_session_symlink_remove_file, _this.merge(args))
    end
  end
end
