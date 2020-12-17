def featured?(num)
  return false unless num.odd? && num % 7 == 0
  num_string = num.to_s
  num_string.chars.each { |char| return false if num_string.count(char) >= 2 }
  true
end

def featured(num)
  if num >= 9_876_543_210
    return "There is no possible number that fulfills those requirements"
  end
  next_featured = num + 1

  while !featured?(next_featured)
    next_featured += 1
  end

  next_featured
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987
featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
