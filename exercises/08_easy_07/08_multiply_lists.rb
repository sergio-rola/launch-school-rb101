def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


# further exploration

def multiply_list(arr1, arr2)
  products = []
  arr1.each.with_index do |num, idx|
    products << num * arr2[idx]
  end

  products
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
