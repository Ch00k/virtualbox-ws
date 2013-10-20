module VBox
  class MediumFormat < Base

    # Attributes

    def id
      WebService.send_request(:i_medium_format_get_id, _this)
    end

    def name
      WebService.send_request(:i_medium_format_get_name, _this)
    end

    def capabilities
      WebService.send_request(:i_medium_format_get_name, _this)
    end

    # Methods

    def describe_file_extensions
      WebService.send_request(:i_medium_format_describe_file_extensions, _this)
    end

    def describe_properties
      WebService.send_request(:i_medium_format_describe_properties, _this)
    end
  end
end
