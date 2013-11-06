module VBox
  class Snapshot < Base

    vb_attr :id
    vb_attr :name
    vb_attr :description
    vb_attr :time_stamp
    vb_attr :online
    vb_attr :machine
    vb_attr :parent
    vb_attr :children

    vb_method :get_children_count

  end
end
