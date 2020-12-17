def move(n, from_array, to_array)
  return if n < 1
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# It happens because we have not set any base case as a return condition for the recursive method.


# further exploration

def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end


todo = ['study']
done = ['apply sunscreen', 'go to the beach']

move(10, todo, done)

p todo # => []
p done # => ["apply sunscreen", "go to the beach", "study", nil, nil, nil, nil, nil, nil, nil, nil, nil]

#  If the length of the from_array is smaller than n, nil will be returned for each value once the array todo gets empty and has no more elements to be moved.
