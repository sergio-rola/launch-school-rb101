# 05_squaring_an_argument.rb

# def multiply(num1, num2)
#   num1 * num2
# end

# def square(num)
#   multiply(num, num)
# end

# p square(5) == 25
# p square(-8) == 64


# futher exploration

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, n)
  product = 1
  n.times { product = multiply(product, num) }
  product
end

p power_to_the_n(5, 3) #=> 125
p power_to_the_n(-2, 4) #=> 16
