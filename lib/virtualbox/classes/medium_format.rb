module VBox
  class MediumFormat < Base

    # Attributes

    def id
      VBox::WebService.send_request(:i_medium_format_get_id, _this)
    end

    def name
      VBox::WebService.send_request(:i_medium_format_get_name, _this)
    end

    def capabilities
      VBox::WebService.send_request(:i_medium_format_get_name, _this)
    end

    # Methods

    def describe_file_extensions
      VBox::WebService.send_request(:i_medium_format_describe_file_extensions, _this)
    end

    def describe_properties
      VBox::WebService.send_request(:i_medium_format_describe_properties, _this)
    end
  end
end
