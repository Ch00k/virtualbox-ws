module VBox
  class VirtualBoxErrorInfo < Base

    # Attributes

    def result_code
      WebService.send_request(:i_virtual_box_error_info_get_result_code, _this)
    end

    def interface_id
      WebService.send_request(:i_virtual_box_error_info_get_interface_id, _this)
    end

    def component
      WebService.send_request(:i_virtual_box_error_info_get_component, _this)
    end

    def text
      WebService.send_request(:i_virtual_box_error_info_get_text, _this)
    end

    def next
      virtual_box_error_info = WebService.send_request(:i_virtual_box_error_info_get_next, _this)
      VirtualBoxErrorInfo.new(virtual_box_error_info)
    end
  end
end
