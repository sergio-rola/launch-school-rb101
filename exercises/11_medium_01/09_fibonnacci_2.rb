def fibonacci(num)
  return 1 if num < 2
  result = [1, 1]
  (num - 2).times do
    result << result[-1] + result[-2]
  end

  result.last
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501


# LS solution

def fibonacci(num)
  first, last = [1, 1]

  3.upto(num) do |n|
    first, last = last, first + last
  end

  last
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001)
