require 'savon'


module VBox::WebService
  class << self
    def connect
      # Initialize configuration here in case if it was not initialized in client
      self.configuration ||= Configuration.new

      host = configuration.vboxweb_host
      port = configuration.vboxweb_port
      log_level = configuration.log_level
      @logger = configuration.logger

      # Savon XML logging
      savon_debug = log_level == 'DEBUG'

      endpoint = "http://#{host}:#{port}"
      wsdl = endpoint + '/?wsdl'
      @logger.info("VirtualBox SOAP web service endpoint: #{endpoint}")
      @logger.info("VirtualBox SOAP web service WSDL: #{wsdl}")

      # Create web service connection
      @conn = Savon.client(:wsdl => wsdl, :endpoint => endpoint, :log => savon_debug, :pretty_print_xml => savon_debug)

      # Check if we really connected to a VirtualBox SOAP web service
      unless operations.include?(:i_websession_manager_logon)
        @logger.fatal("Could not connect to VirtualBox SOAP Web Service at #{endpoint}. No VirtualBox SOAP service found")
        raise NoWebServiceError.new(endpoint)
      end
    end

    def operations
      @conn.operations
    end

    def send_request(soap_method, soap_message)
      @logger.info("Request operation: #{soap_method}")

      # Filter out the password string
      log_soap_message = soap_message.clone
      if soap_method == :i_websession_manager_logon
        log_soap_message[:password] = '<filtered>' if log_soap_message.has_key?(:password)
      end

      @logger.info("Request message: #{log_soap_message}")

      begin
        response = @conn.call(soap_method, :message => soap_message)
      rescue Savon::SOAPFault => e
        @logger.debug(e.message)
        parse_soap_fault(e.message)
      rescue Savon::HTTPError => e
        @logger.error(e.message)
        raise
      end
      parse_response(response)
    end

    def parse_soap_fault(message)
      error_code = message.match(/0x[[:xdigit:]]+/)
      if error_code.nil?
        if message.match(/Validation constraint violation: data type mismatch  in element <\S+>/).nil?
          raise UnknownError, message
        else
          argument = message.match(/<\S+>/).to_s[1..-2].to_underscore
          raise ArgumentError, "Argument #{argument} is of invalid data type"
        end
      else
        error_message = message.split("(SOAP-ENV:Client) VirtualBox error: rc=#{error_code} ")[1].split(" (#{error_code})")[0]
        raise UnknownError, message if error_message.nil?
        argument = error_message.match(/\sa[A-Z]\S+\s/)
        if argument.nil?
          if error_message.match(/Method \S+ is not implemented/).nil?
            raise Error, error_message
          else
            raise NotImplementedError, error_message
          end
        else
          error_message.gsub!(argument.to_s.strip, argument.to_s.strip[1..-1].to_underscore).
                        gsub!(/\s\(must be .*\)/, '')
          raise ArgumentError, error_message
        end
      end
    end

    def parse_response(response)
      @logger.info("Response: #{response.body}")
      response_struct = response.body[response.body.keys[0]]
      if response_struct.nil?
        nil
      else
        if response_struct.keys.length > 1
          returnval = response_struct[:returnval].nil? || response_struct[:returnval]
          response_struct.delete(:returnval)
          [returnval, response_struct]
        else
          response_struct[:returnval]
        end
      end
    end
  end
end
