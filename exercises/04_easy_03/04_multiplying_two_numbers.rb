# 04_multiplying_two_numbers.rb

def multiply(num1, num2)
  num1 * num2
end

multiply(5, 3) == 15

# futher exploration

# It multiplies the given array object n times to the same array object.

def multiply(num1, num2)
 p num1 * num2
end

multiply([5, 6, 7],  3) #=> [5, 6, 7, 5, 6, 7, 5, 6, 7]
