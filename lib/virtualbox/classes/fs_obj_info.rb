module VBox
  class FsObjInfo < Base

    attr_reader :ref

    # Attributes

    def access_time
      VBox::WebService.send_request(:i_fs_obj_info_get_access_time, _this)
    end

    def allocated_size
      VBox::WebService.send_request(:i_fs_obj_info_get_allocated_size, _this)
    end

    def birth_time
      VBox::WebService.send_request(:i_fs_obj_info_get_birth_time, _this)
    end

    def change_time
      VBox::WebService.send_request(:i_fs_obj_info_get_change_time, _this)
    end

    def device_number
      VBox::WebService.send_request(:i_fs_obj_info_get_device_number, _this)
    end

    def file_attributes
      VBox::WebService.send_request(:i_fs_obj_info_get_file_attributes, _this)
    end

    def generation_id
      VBox::WebService.send_request(:i_fs_obj_info_get_generation_id, _this)
    end

    def gid
      VBox::WebService.send_request(:i_fs_obj_info_get_git, _this)
    end

    def group_name
      VBox::WebService.send_request(:i_fs_obj_info_get_group_name, _this)
    end

    def hard_links
      VBox::WebService.send_request(:i_fs_obj_info_get_hard_links, _this)
    end

    def modification_time
      VBox::WebService.send_request(:i_fs_obj_info_get_modification_time, _this)
    end

    def name
      VBox::WebService.send_request(:i_fs_obj_info_get_name, _this)
    end

    def node_id
      VBox::WebService.send_request(:i_fs_obj_info_get_node_id, _this)
    end

    def node_id_device
      VBox::WebService.send_request(:i_fs_obj_info_get_node_id_device, _this)
    end

    def object_size
      VBox::WebService.send_request(:i_fs_obj_info_get_object_size, _this)
    end

    def type
      VBox::WebService.send_request(:i_fs_obj_info_get_type, _this)
    end

    def uid
      VBox::WebService.send_request(:i_fs_obj_info_get_uid, _this)
    end

    def user_flags
      VBox::WebService.send_request(:i_fs_obj_info_get_user_flags, _this)
    end

    def user_name
      VBox::WebService.send_request(:i_fs_obj_info_get_user_name, _this)
    end
  end
end