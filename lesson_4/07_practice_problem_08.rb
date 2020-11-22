numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# output: 1, 3
# We should never modify and iterate an array at the same time. As we use the shift method the array elements are reduced, meaning that we will skip some iterations.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# output: 1 2
