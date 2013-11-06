module VBox
  class MediumFormat < Base

    vb_attr :id
    vb_attr :name
    vb_attr :capabilities, :force_array => true

    vb_method :describe_file_extensions
    vb_method :describe_properties

  end
end
