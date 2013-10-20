require 'savon'


module VBox
  module WebService
    class << self
      def connect
        self.configuration ||= Configuration.new
        host = configuration.vboxweb_host
        port = configuration.vboxweb_port
        log_level = configuration.log_level
        @debug = log_level == 'INFO' || log_level == 'DEBUG' ? true : false
        savon_debug = log_level == 'DEBUG' ? true : false

        endpoint = "http://#{host}:#{port}"
        wsdl = endpoint + '/?wsdl'

        @conn = Savon.client(:wsdl => wsdl, :endpoint => endpoint, :log => savon_debug, :pretty_print_xml => savon_debug)

        raise "Could not connect to VirtualBox SOAP Web Service at #{endpoint} (No VirtualBox SOAP service found)" unless
            @conn.operations.include?(:i_websession_manager_logon)
      rescue Errno::ECONNREFUSED
        raise "Could not connect to VirtualBox SOAP Web Service at #{endpoint} (Connection refused)"
      end

      def send_request(soap_method, soap_message)
        puts "DEBUG --- REQUEST:  #{soap_method}, #{soap_message}" if @debug
        response = @conn.call(soap_method, :message => soap_message)
        parse_response(response)
      end

      private
      def parse_response(response)
        puts "DEBUG --- RESPONSE: #{response.body}" if @debug
        response_struct = response.body[response.body.keys[0]]
        if response_struct.nil?
          nil
        else
          if response_struct.keys.length > 1
            returnval = response_struct[:returnval]
            response_struct.delete(:returnval)
            [returnval, response_struct]
          else
            response_struct[:returnval]
          end
        end
      end
    end
  end
end
