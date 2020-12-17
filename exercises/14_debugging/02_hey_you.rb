def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# When we call the String#chars method we create a new array object with the characters string objects inside, meaning that the name parameter variable is not pointing to the new array object. When we mutate the characters in the array, as the parameter name is now pointing to different object than the array, it is not changed.

