# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(num)
#   result = ""

#   loop do
#     num, remainder = num.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if num == 0
#   end

#   result
# end

# def signed_integer_to_string(num)
#   case num <=> 0
#   when -1 then "-" + integer_to_string(num.abs)
#   when 1 then "+" + integer_to_string(num)
#   else '0'
#   end
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

# futher exploration

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  result = ""

  loop do
    num, remainder = num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num == 0
  end

  result
end

def signed_integer_to_string(num)
  return '0' if num == 0
  sign = num > 0 ? ("+") : ("-")
  sign + integer_to_string(num.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
