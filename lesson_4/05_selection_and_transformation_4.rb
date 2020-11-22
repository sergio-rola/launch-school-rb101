def multiply(numbers, multiplier)
  arr = []
  counter = 0

  loop do
    break if counter == numbers.size

    arr << numbers[counter] * multiplier
    counter += 1
  end

  arr
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
