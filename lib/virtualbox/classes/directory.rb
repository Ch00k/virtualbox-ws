module VBox
  class Directory < Base

    # Attributes

    def directory_name
      WebService.send_request(:i_directory_get_directory_name, _this)
    end

    def filter
      WebService.send_request(:i_directory_get_filter, _this)
    end

    # Methods

    def close
      WebService.send_request(:i_directory_close, _this)
    end

    def read
      entry = WebService.send_request(:i_directory_read, _this)
      FsObjInfo.new(entry)
    end
  end
end