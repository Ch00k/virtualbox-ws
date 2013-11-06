module VBox
  class VFSExplorer < Base

    vb_attr :path
    vb_attr :type

    vb_method :cd
    vb_method :cd_up
    vb_method :entry_list
    vb_method :exists
    vb_method :remove
    vb_method :update

  end
end
