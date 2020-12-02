def sum_of_sums(arr)
  total_sums = []
  counter = 0

  while counter < arr.size
    (0..counter).each do |idx|
      total_sums << arr[idx]
    end
    counter += 1
  end

  total_sums.sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


# further exploration

def sum_of_sums(arr)
  total_sums = 0

  1.upto(arr.size) { |num| total_sums += arr.slice(0, num).inject(:+)}

  total_sums
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
