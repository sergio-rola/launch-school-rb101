[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => true
# The output is: 1 because in the first iteration the block returns true so #puts is only executed once.

# The return value of the block is determined by the return value of the last expression within the block. The return value from the first iteration in the block is true, this means that any? will return the bolean true and no more iterations will need to happen. It only needs one of the iterations returns to be true.
