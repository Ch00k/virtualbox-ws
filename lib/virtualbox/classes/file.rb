module VBox
  class File < Base

    # Attributes

    def creation_mode
      WebService.send_request(:i_file_get_creation_mode, _this)
    end

    def disposition
      WebService.send_request(:i_file_get_disposition, _this)
    end

    def file_name
      WebService.send_request(:i_file_get_file_name, _this)
    end

    def initial_size
      WebService.send_request(:i_file_get_initial_size, _this)
    end

    def open_mode
      WebService.send_request(:i_file_get_open_mode, _this)
    end

    def offset
      WebService.send_request(:i_file_get_offset, _this)
    end

    # Methods

    def close
      WebService.send_request(:i_file_close, _this)
    end

    def query_info
      info = WebService.send_request(:i_file_query_info, _this)
      FsObjInfo.new(info)
    end

    def read(args={})
      ensure_hash args
      WebService.send_request(:i_file_read, _this.merge(args))
    end

    def read_at(args={})
      ensure_hash args
      WebService.send_request(:i_file_read_at, _this.merge(args))
    end

    def seek(args={})
      ensure_hash args
      WebService.send_request(:i_file_seek, _this.merge(args))
    end

    def set_acl(args={})
      ensure_hash args
      WebService.send_request(:i_file_set_acl, _this.merge(args))
    end

    def write(args={})
      ensure_hash args
      WebService.send_request(:i_file_write, _this.merge(args))
    end

    def write_at(args={})
      ensure_hash args
      WebService.send_request(:i_file_write_at, _this.merge(args))
    end
  end
end