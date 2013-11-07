class String
  def to_a
    [] << self
  end

  def to_num
    if !self.match(/^[0-9]+$/).nil?
      Integer(self)
    elsif !self.match(/^[0-9]+\.[0-9]+$/).nil?
      Float(self)
    else
      self
    end
  end

  def to_vbox_object(cls)
    return self if cls.nil?
    VBox.const_get(cls[1..-1]).new(self)
  end

  def to_underscore
    self.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr('-', '_').
        downcase
  end
end
