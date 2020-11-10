# 09_string_assignment.rb

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name #=> BOB, BOB

# The upcase! method mutates the caller value. As name and save_name variables are pointing to the same place in memory when name is called by the upcase! method, the value for that pla+++++++++++'0'''''''''''''''''''''''''0ce is memory is changed (mutated). Therefore changing also the save_name variable value.
