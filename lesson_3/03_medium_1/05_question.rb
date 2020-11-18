def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

limit = 15

result = fib(0, 1, limit)
puts "result is #{result}"

# the variable limit value is not available inside the method because it is not visible inside the method scope. To correct it we need to add an another argument in the method call.
