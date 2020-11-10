# 09_sum_of_digits.rb

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# further exploration 1

def sum(num)
  strg_digits = num.to_s.chars
  strg_digits
  sum = 0

  strg_digits.each do |strg_digit|
     sum += strg_digit.to_i
  end

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# further exploration 2

def sum(num)
  num.to_s.chars.map {|digits| digits.to_i}.inject(&:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
