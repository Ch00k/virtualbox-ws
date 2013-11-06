module VBox
  class VRDEServerInfo < Base

    vb_attr :active
    vb_attr :port
    vb_attr :number_of_clients
    vb_attr :begin_time
    vb_attr :end_time
    vb_attr :bytes_sent
    vb_attr :bytes_sent_total
    vb_attr :bytes_received
    vb_attr :bytes_received_total
    vb_attr :user
    vb_attr :domain
    vb_attr :client_name
    vb_attr :client_ip
    vb_attr :client_version
    vb_attr :encryption_style

  end
end
