def merge(arr1, arr2)
  result = []

  arr_all_elements = arr1 + arr2
  until arr_all_elements.empty?
    result << arr_all_elements.min
    arr_all_elements.delete_at(arr_all_elements.index(arr_all_elements.min))
  end

  result
end

def merge_sort(arr)
  return arr if arr.size == 1

  mid = arr.size / 2
  first_half = merge_sort(arr.slice(0...mid))
  second_half = merge_sort(arr.slice(mid...arr.size))

  merge(first_half, second_half)
end

merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
