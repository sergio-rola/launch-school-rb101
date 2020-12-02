def double_numbers?(num)
  return false if num.digits.size.odd?

  num_digits = num.digits.reverse
  right_side = num_digits[0..(num_digits.size / 2 - 1)]
  left_side = num_digits[(num_digits.size / 2)..-1]
  right_side == left_side
end


def twice(num)
  double_numbers?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
