def merge(arr1, arr2)
  merged = arr1 << arr2
  merged.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# further exploration

def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
