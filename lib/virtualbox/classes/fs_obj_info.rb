module VBox
  class FsObjInfo < Base

    # Attributes

    def access_time
      WebService.send_request(:i_fs_obj_info_get_access_time, _this)
    end

    def allocated_size
      WebService.send_request(:i_fs_obj_info_get_allocated_size, _this)
    end

    def birth_time
      WebService.send_request(:i_fs_obj_info_get_birth_time, _this)
    end

    def change_time
      WebService.send_request(:i_fs_obj_info_get_change_time, _this)
    end

    def device_number
      WebService.send_request(:i_fs_obj_info_get_device_number, _this)
    end

    def file_attributes
      WebService.send_request(:i_fs_obj_info_get_file_attributes, _this)
    end

    def generation_id
      WebService.send_request(:i_fs_obj_info_get_generation_id, _this)
    end

    def gid
      WebService.send_request(:i_fs_obj_info_get_git, _this)
    end

    def group_name
      WebService.send_request(:i_fs_obj_info_get_group_name, _this)
    end

    def hard_links
      WebService.send_request(:i_fs_obj_info_get_hard_links, _this)
    end

    def modification_time
      WebService.send_request(:i_fs_obj_info_get_modification_time, _this)
    end

    def name
      WebService.send_request(:i_fs_obj_info_get_name, _this)
    end

    def node_id
      WebService.send_request(:i_fs_obj_info_get_node_id, _this)
    end

    def node_id_device
      WebService.send_request(:i_fs_obj_info_get_node_id_device, _this)
    end

    def object_size
      WebService.send_request(:i_fs_obj_info_get_object_size, _this)
    end

    def type
      WebService.send_request(:i_fs_obj_info_get_type, _this)
    end

    def uid
      WebService.send_request(:i_fs_obj_info_get_uid, _this)
    end

    def user_flags
      WebService.send_request(:i_fs_obj_info_get_user_flags, _this)
    end

    def user_name
      WebService.send_request(:i_fs_obj_info_get_user_name, _this)
    end
  end
end