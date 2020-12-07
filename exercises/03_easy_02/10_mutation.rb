# 10_mutation.rb

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2 #=> Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)

# We start by using the each method on array1 which iterates through the array1 collection and updates the array2 collection, by appending passed objects from array1. The objects inside the collection are pointing to the same objects in array1 & array2 so when the upcase! method is called for array1 also mutates the objects of the collection in array 2.

#Note. Array1 & Array2 are different objects.
