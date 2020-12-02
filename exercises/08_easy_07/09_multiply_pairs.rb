def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |sub_arr| sub_arr.inject(:*)}.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


# further exploration

def multiply_all_pairs(arr1, arr2)
  products = []

  arr1.each do |ele1|
    arr2.each do |ele2|
      products << ele1 * ele2
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
