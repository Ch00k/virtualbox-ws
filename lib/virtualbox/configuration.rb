module VBox
  module WebService
    class Configuration

      attr_accessor :vboxweb_host, :vboxweb_port, :vboxweb_user, :vboxweb_pass, :log_level

      def initialize
        @vboxweb_host = ENV['VBOXWEB_HOST'] || '127.0.0.1'
        @vboxweb_port = ENV['VBOXWEB_PORT'] || '18083'
        @vboxweb_user = ENV['VBOXWEB_USER']
        @vboxweb_pass = ENV['VBOXWEB_PASS']
        @log_level = ENV['VBOXWEB_LOGGING'] || 'ERROR'
      end

      def log_level=(log_level)
        @log_level = 'ERROR' unless ['ERROR', 'INFO', 'DEBUG'].include?(log_level)
      end
    end

    class << self
      attr_accessor :configuration
    end

    def self.configure
      self.configuration ||= Configuration.new
      yield configuration
    end
  end
end