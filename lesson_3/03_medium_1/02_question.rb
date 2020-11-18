# option 1

# It is not possible to concatenate an integer object to a string object.
puts "the value of 40 + 2 is " + "#{40 + 2}"

# option 2

puts "the value of 40 + 2 is " + (40 + 2).to_s

