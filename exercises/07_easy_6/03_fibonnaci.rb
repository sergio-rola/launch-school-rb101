# def fibonnacci(num)
#   fibo_nums = [1, 1]
#   (0..num-3).each { |num| fibo_nums << fibo_nums[num] + fibo_nums[num +1] }

  fibo_nums
end

def find_fibonacci_index_by_length(length)
idx = 2

until length == fibonnacci(idx).last.digits.size
  idx += 1
end
  idx
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# futher exploration

def find_fibonacci_index_by_length(num)
  first = 1
  second = 1
  index = 2

  loop do
    index +=1
    fibonnacci = first + second
    break if fibonnacci.digits.size >= num

    first = second
    second = fibonnacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
