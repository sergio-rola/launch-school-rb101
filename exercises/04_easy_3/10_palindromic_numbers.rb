# 10_palindromic_numbers.rb

def palindromic_number?(num)
  num.digits.join.to_i == num
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# further exploration

# If the number begins with leading zeroes ruby interprets this as an octal number, which makes it difficult to check if it is a plaindrome because it has more than one leading zero. More than one leading zero is interpreted as one zero only.

# This is possible:
p sprintf('0%o', 0440) == sprintf('0%o', 0440).reverse #=> true
# but only works with one leading zero

p sprintf('0%o', 004400) == sprintf('0%o', 004400).reverse #=> false
#does not work with more than one leading zero
