module VBox
  class SharedFolder < Base

    attr_reader :ref

    # Attributes

    def name
      VBox::WebService.send_request(:i_shared_folder_get_name, _this)
    end

    def host_path
      VBox::WebService.send_request(:i_shared_folder_get_host_path, _this)
    end

    def accessible
      VBox::WebService.send_request(:i_shared_folder_get_accessible, _this)
    end

    def writable
      VBox::WebService.send_request(:i_shared_folder_get_writable, _this)
    end

    def auto_mount
      VBox::WebService.send_request(:i_shared_folder_get_auto_mount, _this)
    end

    def last_access_error
      VBox::WebService.send_request(:i_shared_folder_get_last_access_error, _this)
    end
  end
end
