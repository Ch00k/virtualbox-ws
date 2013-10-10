module VBox
  class SharedFolderChangedEvent < Event

    attr_reader :ref

    # Attributes

    def scope
      VBox::WebService.send_request(:i_shared_folder_changed_event_get_scope, _this)
    end
  end
end
