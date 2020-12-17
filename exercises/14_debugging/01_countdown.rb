def decrease(counter)
  counter - 1
end

counter = 10

until counter == 0 do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# The counter variable in line 5 and counter parameter inside the method are two different variables that share the same name but with different scopes bounding scopes.
# On line 2 we reassign the counter parameter value to the result of its value - 1. This changes the value of the paremeter inside the method but not outside the method. We don't use the return value therefore the counter variable outside the method still references the same object (10).


# further exploration - refactoring

10.downto(1) { |countdown| puts countdown }

puts 'LAUNCH!'
