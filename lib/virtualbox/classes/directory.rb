module VBox
  class Directory < Base

    # Attributes

    def directory_name
      VBox::WebService.send_request(:i_directory_get_directory_name, _this)
    end

    def filter
      VBox::WebService.send_request(:i_directory_get_filter, _this)
    end

    # Methods

    def close
      VBox::WebService.send_request(:i_directory_close, _this)
    end

    def read
      entry = VBox::WebService.send_request(:i_directory_read, _this)
      VBox::FsObjInfo.new(entry)
    end
  end
end