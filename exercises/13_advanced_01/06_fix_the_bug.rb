require "pry"

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# We did not specified any conditional expression for elsif. This means that Ruby parser will try to parse the next line. Thus since "array.map do |value|" returns the value of map and an array is always truthy, this branch will always be executed for non empty arrays. The issue is that since the code to be executed was used for the conditional expression elsif, there is now no code to be executed, nil will be returned.
