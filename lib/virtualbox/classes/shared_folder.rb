module VBox
  class SharedFolder < Base

    # Attributes

    def name
      WebService.send_request(:i_shared_folder_get_name, _this)
    end

    def host_path
      WebService.send_request(:i_shared_folder_get_host_path, _this)
    end

    def accessible
      WebService.send_request(:i_shared_folder_get_accessible, _this)
    end

    def writable
      WebService.send_request(:i_shared_folder_get_writable, _this)
    end

    def auto_mount
      WebService.send_request(:i_shared_folder_get_auto_mount, _this)
    end

    def last_access_error
      WebService.send_request(:i_shared_folder_get_last_access_error, _this)
    end
  end
end
