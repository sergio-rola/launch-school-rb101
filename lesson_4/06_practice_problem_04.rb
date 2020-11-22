['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {'a' => ant, 'b'=> 'bear', 'c' => 'cat'}
# #each_with_object passes an object ({} - hash) as an argument. The object is passed to the block and updated by the value return in each iteration. After the iteration the initial given object is returned but with the values updated.
# The first iteration inside the block returns "a" => "ant" to the hash, then "b" => "bear" and so on. #each_with_object then returns the hash with 3 elements.
