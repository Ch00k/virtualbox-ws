class Hash
  def referize!
    self.each do |key, value|
      if value.is_a?(Array)
        value.map! do |item|
          item.respond_to?(:ref) ? item.ref : item
        end
      elsif value.respond_to?(:ref)
        self[key] = value.ref
      end
    end
  end
end
