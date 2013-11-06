module VBox
  class VRDEServer < Base

    starts_with_acronym

    vb_attr :enabled
    vb_attr :auth_type
    vb_attr :auth_timeout
    vb_attr :allow_multi_connection
    vb_attr :reuse_single_connection
    vb_attr :vrde_ext_pack, :force_tag => 'VRDEExtPack'
    vb_attr :auth_library
    vb_attr :vrde_properties

    vb_method :get_vrde_property
    vb_method :set_vrde_property

  end
end
