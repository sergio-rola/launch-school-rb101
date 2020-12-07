def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(integer, n)
  integer_as_string = integer.to_s.chars

  if integer_as_string.size == n
    left_string = ""
  else
    left_string = integer_as_string[0..(integer_as_string.size - n - 1)].join
  end
  right_string = (integer_as_string[-n..-1]).join

  rotated_string = (left_string + rotate_string(right_string)).to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917


# further exploration with rotate array

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(integer, n)
  digits = integer.to_s.chars
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
