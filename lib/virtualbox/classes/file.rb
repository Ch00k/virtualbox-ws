module VBox
  class File < Base

    # Attributes

    def creation_mode
      VBox::WebService.send_request(:i_file_get_creation_mode, _this)
    end

    def disposition
      VBox::WebService.send_request(:i_file_get_disposition, _this)
    end

    def file_name
      VBox::WebService.send_request(:i_file_get_file_name, _this)
    end

    def initial_size
      VBox::WebService.send_request(:i_file_get_initial_size, _this)
    end

    def open_mode
      VBox::WebService.send_request(:i_file_get_open_mode, _this)
    end

    def offset
      VBox::WebService.send_request(:i_file_get_offset, _this)
    end

    # Methods

    def close
      VBox::WebService.send_request(:i_file_close, _this)
    end

    def query_info
      info = VBox::WebService.send_request(:i_file_query_info, _this)
      VBox::FsObjInfo.new(info)
    end

    def read(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_file_read, _this.merge(args))
    end

    def read_at(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_file_read_at, _this.merge(args))
    end

    def seek(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_file_seek, _this.merge(args))
    end

    def set_acl(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_file_set_acl, _this.merge(args))
    end

    def write(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_file_write, _this.merge(args))
    end

    def write_at(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:i_file_write_at, _this.merge(args))
    end
  end
end