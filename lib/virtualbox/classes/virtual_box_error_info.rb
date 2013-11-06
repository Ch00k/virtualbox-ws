module VBox
  class VirtualBoxErrorInfo < Base

    vb_attr :result_code
    vb_attr :result_detail
    vb_attr :interface_id
    vb_attr :component
    vb_attr :text
    vb_attr :next

  end
end
