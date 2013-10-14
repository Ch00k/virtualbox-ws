class Hash
  def referize!(*keys)
    keys.each do |key|
      if self[key].is_a?(Array)
        self[key].map! do |item|
          item.respond_to?(:ref) ? item.ref : item
        end
      elsif self[key].respond_to?(:ref)
        self[key] = self[key].ref
      end
    end
  end
end
