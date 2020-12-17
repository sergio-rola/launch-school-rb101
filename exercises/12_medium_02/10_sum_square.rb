def sum_square_difference(num)
  squares_of_sum = ((1..num).sum**2)
  sum_of_squares = (1..num).map { |num| num**2}.sum
  squares_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
