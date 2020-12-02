def interleave(arr1, arr2)
  merged_arr = []
  idx = 0

  until idx == arr1.size
    merged_arr << arr1[idx] << arr2[idx]
    idx += 1
  end

  merged_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# further exploration

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
