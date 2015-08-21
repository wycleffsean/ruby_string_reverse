class String
  def slow_reverse
    arr = split ''
    (arr.length / 2).times do |i|
      arr[i], arr[-(i + 1)] = arr[-(i + 1)], arr[i]
    end
    arr.join ''
  end
end
