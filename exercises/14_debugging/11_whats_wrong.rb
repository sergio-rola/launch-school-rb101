require "pry"

arr = ["9", "8", "7", "10", "11"]
sorted = arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

p sorted

# Expected output: ["11", "10", "9", "8", "7"]
# Actual output: ["10", "11", "7", "8", "9"]

# One needs to initialize a new variable and assign it the return value of #sort method called by the array. Now when we call p the variable outputs the intended values in the correct order.
