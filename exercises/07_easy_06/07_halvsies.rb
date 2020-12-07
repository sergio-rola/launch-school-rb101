 def halvsies(arr)
  idx = 0
  first_array, last_array = [], []

  while idx < arr.size
    idx < (arr.size / 2.0) ? first_array << arr[idx] : last_array << arr[idx]
    idx += 1
  end

   [first_array, last_array]
 end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# further exploration

# We need to round up the value of the division, if we use integer values the result is an integer that cannot be rounded up. By using a float we make sure that the result is always a float number

 def halvsies(arr)
  middle = (arr.size / 2.0).round(half: :up)
  first_half = arr.slice(0, middle)
  second_half = arr.slice(middle, arr.size - middle)
  [first_half, second_half]
 end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
