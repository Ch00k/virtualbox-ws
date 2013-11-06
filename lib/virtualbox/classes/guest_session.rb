module VBox
  class GuestSession < Base

    vb_attr :user
    vb_attr :domain
    vb_attr :name
    vb_attr :id
    vb_attr :timeout
    vb_attr :protocol_version
    vb_attr :status
    vb_attr :environment
    vb_attr :processes, :force_array => true
    vb_attr :directories, :force_array => true
    vb_attr :files, :force_array => true
    vb_attr :event_source

    vb_method :close
    vb_method :copy_from
    vb_method :copy_to
    vb_method :directory_create
    vb_method :directory_create_temp
    vb_method :directory_exists
    vb_method :directory_open
    vb_method :directory_query_info
    vb_method :directory_remove
    vb_method :directory_remove_recursive
    vb_method :directory_rename
    vb_method :directory_set_acl
    vb_method :environment_clear
    vb_method :environment_get
    vb_method :environment_set
    vb_method :environment_unset
    vb_method :file_create_temp
    vb_method :file_exists
    vb_method :file_open
    vb_method :file_open_ex
    vb_method :file_query_info
    vb_method :file_query_size
    vb_method :file_remove
    vb_method :file_rename
    vb_method :file_set_acl
    vb_method :process_create
    vb_method :process_create_ex
    vb_method :process_get
    vb_method :symlink_create
    vb_method :symlink_exists
    vb_method :symlink_read
    vb_method :symlink_remove_directory
    vb_method :symlink_remove_file
    vb_method :wait_for
    vb_method :wait_for_array

  end
end
