def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" #=> "pumpkins"
puts "My array looks like this now: #{my_array}" #=> ["pumpkins", "rutabaga"]

# my_string is passed as an argument to tricky method, we then use the "add AND assign" operator which assigns the operation value to a new object. The result of this is that the original argument is not changed.
# my_array is passed as an argument to tricky method, then we append "rutabaga" to an_array_param parameter that is pointing to my_array array. << method is a destructive method so it mutates the caller.
