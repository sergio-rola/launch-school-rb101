# 04_mandatory_blocks.rb

a = [1, 4, 8, 11, 15, 19]

puts a.bsearch {|element| element > 8 }

# bsearch {|x| block } → elem
