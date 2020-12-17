def merge(arr1, arr2)
  result = []

  arr_all_elements = arr1 + arr2
  arr_max = arr_all_elements.max
  arr_min = arr_all_elements.min

  (arr_min..arr_max).each do |num|
    arr1.count(num).times { result << num }
    arr2.count(num).times { result << num }
  end

  result
end

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

# further exploration - without iterating through each array

def merge(arr1, arr2)
  result = []

  arr_all_elements = arr1 + arr2
  until arr_all_elements.empty?
    result << arr_all_elements.min
    arr_all_elements.delete_at(arr_all_elements.index(arr_all_elements.min))
  end

  result
end

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]
