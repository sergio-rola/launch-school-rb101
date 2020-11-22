[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# The block returns true for all elements as 'hi' is a truthy value, this means that all elements evaluated will be selected and returned as a new array.
# => [1, 2, 3]
