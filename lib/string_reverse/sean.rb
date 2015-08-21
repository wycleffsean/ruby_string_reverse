require_relative '../../ext/xor_swap/seans_xor_swap'

class String
  def seans_slow_reverse
    arr = split ''
    (arr.length / 2).times do |i|
      arr[i], arr[-(i + 1)] = arr[-(i + 1)], arr[i]
    end
    arr.join ''
  end
end
