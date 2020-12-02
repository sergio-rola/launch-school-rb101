def buy_fruit(fruits_arr)
  fruits_arr.each_with_object([]) do |sub_arr, expanded_list|
    sub_arr[1].times { expanded_list << sub_arr[0] }
  end
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
