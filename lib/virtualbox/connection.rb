require 'savon'


module VBox
  module WebService
    class << self
      def connect(args={})
        host = args[:host] || '127.0.0.1'
        port = args[:port] || '18083'
        debug = args[:debug] || false
        savon_debug = args[:savon_debug] || false
        endpoint = "http://#{host}:#{port}"
        wsdl = endpoint + '/?wsdl'
        @conn = Savon.client(:wsdl => wsdl, :endpoint => endpoint, :log => savon_debug, :pretty_print_xml => savon_debug)
        if @conn.operations.include?(:i_websession_manager_logon)
          @debug = debug
          @savon_debug = savon_debug
          true
        else
          raise "Could not connect to VirtualBox SOAP Web Service at #{endpoint} (No VirtualBox SOAP service found)"
        end
      rescue Errno::ECONNREFUSED
        raise "Could not connect to VirtualBox SOAP Web Service at #{endpoint} (Connection refused)"
      end

      def send_request(soap_method, soap_message)
        puts "DEBUG --- REQUEST:  #{soap_method}, #{soap_message}" if @debug
        response = @conn.call(soap_method, :message => soap_message)
        parse_response(response)
      end

      def debug
        @debug
      end

      def debug=(debug)
        @debug = debug
      end

      def savon_debug
        @debug
      end

      def savon_debug=(savon_debug)
        @savon_debug = savon_debug
        @conn.globals[:log] = savon_debug
        @conn.globals[:pretty_print_xml] = savon_debug
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
