{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil , "bear"]
# Creates a new array containing the values returned by the block.
# In the first iteration the condition evaluates to false ('ant' is not > 3), as none of the conditions inside the if statement evaluate to true, the if statement returns nil. This nil is then returned by the block as the first returned value. The second iteration evaluates to true inside the if statement so value is the last expression executed. It is returned by the block as the second value("bear") inside the array.
