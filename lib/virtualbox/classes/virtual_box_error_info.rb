module VBox
  class VirtualBoxErrorInfo < Base

    # Attributes

    def result_code
      VBox::WebService.send_request(:i_virtual_box_error_info_get_result_code, _this)
    end

    def interface_id
      VBox::WebService.send_request(:i_virtual_box_error_info_get_interface_id, _this)
    end

    def component
      VBox::WebService.send_request(:i_virtual_box_error_info_get_component, _this)
    end

    def text
      VBox::WebService.send_request(:i_virtual_box_error_info_get_text, _this)
    end

    def next
      virtual_box_error_info = VBox::WebService.send_request(:i_virtual_box_error_info_get_next, _this)
      VBox::VirtualBoxErrorInfo.new(virtual_box_error_info)
    end
  end
end
