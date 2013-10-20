module VBox
  class SerialPortChangedEvent < Event

    # Attributes

    def serial_port
      serial_port = WebService.send_request(:i_serial_port_changed_event_get_serial_port, _this)
      SerialPort.new(serial_port)
    end
  end
end
