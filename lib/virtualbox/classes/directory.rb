module VBox
  class Directory < Base

    vb_attr :directory_name
    vb_attr :filter

    vb_method :close
    vb_method :read

  end
end