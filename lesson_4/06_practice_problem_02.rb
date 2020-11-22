['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

#  count counts the number of elements for which the block returns a true value. This means that count checks the truthiness of the block's return value.
# => 2
