[1, 2, 3].reject do |num|
  puts num
end

# reject returns a new array containing the items in self for which the given block is not true. "puts" returns nil which is a falsey value. Therefore all elements are selected as the return value from the block is always false.
# => [1, 2, 3]
