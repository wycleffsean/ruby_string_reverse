class String
  def zachs_recurse_reverse(count = 0)
    return self if count == (length/2)

    tmp = self[count]
    self[count] = self[length-count-1]
    self[length-count-1] = tmp

    zachs_recurse_reverse(count+1)
  end
end
