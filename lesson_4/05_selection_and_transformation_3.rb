def double_odd_indeces(numbers)
  doubled_indeces = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_indeces << current_number

    counter += 1
  end

  doubled_indeces
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indeces(my_numbers)  # => [1, 8, 3, 14, 2, 12]
