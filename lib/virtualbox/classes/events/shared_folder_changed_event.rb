module VBox
  class SharedFolderChangedEvent < Event

    # Attributes

    def scope
      WebService.send_request(:i_shared_folder_changed_event_get_scope, _this)
    end
  end
end
