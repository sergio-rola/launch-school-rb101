def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # => "pumpkinsrutabaga"
# As the a_string_param parameter is pointing to the same my_string object. The append method mutates the original string.
puts "My array looks like this now: #{my_array}" # => ["pumpkins"]
# The an_array_param is assigned to a new object by Array#= , this means that there is no more connection to the original alias inside the method.
