class Symbol
  def chop
    self.to_s.chop.to_sym
  end

  def gsub(*args)
    self.to_s.gsub(*args).to_sym
  end

  def end_with?(*args)
    self.to_s.end_with?(*args)
  end

  def include?(*args)
    self.to_s.include?(*args)
  end
end