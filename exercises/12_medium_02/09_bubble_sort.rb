def bubble_sort!(arr)
  last_index = arr.size - 2

  while last_index >= 0
    arr[0..last_index].each_with_index do |value, idx|
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if arr[idx] > arr[idx + 1]
    end
    last_index -= 1
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
