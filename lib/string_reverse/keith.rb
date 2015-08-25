class String
  def keith_reverse
    (0...length/2).each do |i|
      tmp = self[i]
      self[i] = self[-i-1]
      self[-i-1] = tmp
    end
    self
  end

  def keith_reverse2
    (0...length/2).each do |i|
      self[i], self[-(i+1)] = self[-(i+1)], self[i]
    end
    self
  end
end
