module VBox
  class VFSExplorer < Base

    # Attributes

    def path
      VBox::WebService.send_request(:ivfs_explorer_get_path, _this)
    end

    def type
      VBox::WebService.send_request(:ivfs_explorer_get_type, _this)
    end

    # Methods

    def cd(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:ivfs_explorer_cd, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def cd_up(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:ivfs_explorer_cd_up, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def entry_list(args={})
      VBox::WebService.send_request(:ivfs_explorer_entry_list, _this.merge(args))
    end

    def exists(args={})
      ensure_hash(args)
      VBox::WebService.send_request(:ivfs_explorer_exists, _this.merge(args))
    end

    def remove(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:ivfs_explorer_remove, _this.merge(args))
      VBox::Progress.new(progress)
    end

    def update(args={})
      ensure_hash(args)
      progress = VBox::WebService.send_request(:ivfs_explorer_update, _this.merge(args))
      VBox::Progress.new(progress)
    end
  end
end
