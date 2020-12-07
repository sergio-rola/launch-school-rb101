# 06_exclusive_or.rb

# a function named xor that takes two arguments
# returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(bolean1, bolean2)
  bolean1 != bolean2
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# further exploration
# Short-circuiting in xor operations is not possible as we always needs both operands to be processed before a bolean value can be returned from the operation.
