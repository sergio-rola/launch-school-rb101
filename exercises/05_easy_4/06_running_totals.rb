def running_total(array)
  current_total_arr = array[0]
  while array.size < 2
    current_total_arr << array[0] + array[1]
    array.shift
  end
  current_total_arr
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) ==


# further exploration

def running_total(array)
  sum = 0
  array.map {|value| sum += value}
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []


# further exporation 1

def running_total(array)
  running_total = 0
  array.each_with_object([]) { |i, prev_sum| prev_sum << running_total += i }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []


# further exporation 2

def running_total(array)
  running_total = []

  array.inject(0) do |sum, n|
    running_total << (sum + n)
    sum + n
  end

  running_total
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
