def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def max_rotation(integer)
  current_rotation = integer.to_s.chars
  number_digits = integer.to_s.size
  rotated = []

  while number_digits > 0
    current_rotation = rotate_array(current_rotation)
    rotated << current_rotation[0]
    current_rotation.shift
    number_digits -= 1
  end

  rotated.join.to_i
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845


# further exploration

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(integer, n)
  digits = integer.to_s.chars
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join # to output the result as a string
end

def max_rotation(integer)
  number_digits = integer.to_s.chars.size

  number_digits.downto(2) do |n|
    integer = rotate_rightmost_digits(integer, n)
  end
  p integer
end

p max_rotation(735291) == "321579"
p max_rotation(3) == "3"
p max_rotation(35) == "53"
p max_rotation(105) == "015" # output as a string to keep leading zeroes
p max_rotation(8_703_529_146) == "7321609845"
