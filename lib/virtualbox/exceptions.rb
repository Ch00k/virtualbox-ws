module VBox::WebService
  class Error < StandardError; end

  class ConnectionError < Error
    def initialize(endpoint, message)
      @endpoint = endpoint
      @message = message
    end

    def to_s
      "Could not connect to VirtualBox SOAP Web Service at #{@endpoint}. #{@message}"
    end
  end

  class NoWebServiceError < ConnectionError
    def initialize(endpoint, message = 'No VirtualBox SOAP service found')
      super
    end
  end

  class UnknownError < Error; end

  class ArgumentError < Error; end

  class NotImplementedError < Error; end
end
