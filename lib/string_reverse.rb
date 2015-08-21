#require "string_reverse/version"

class String
  def slow_reverse
    arr = split ''
    (arr.length / 2).times do |i|
      arr[i], arr[-(i + 1)] = arr[-(i + 1)], arr[i]
    end
    arr.join ''
  end

  def keith_reverse
    (0..length/2).each do |i|
      tmp = self[i]
      self[i] = self[-i-1]
      self[-i-1] = tmp
    end
    self
  end

  def keith_reverse2
    (0..length/2).each do |i|
      self[i], self[-(i+1)] = self[-(i+1)], self[i]
    end
    self
  end
end
