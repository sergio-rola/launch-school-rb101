# 02_arithmetic_integer.rb

def prompt(msg)
  puts "==> #{msg}"
end

prompt ("Enter the first number:")
first_number = gets.chomp.to_i
prompt ("Enter the second number:")
second_number = gets.chomp.to_i

prompt "#{first_number} + #{second_number} = #{first_number + second_number}"
prompt "#{first_number} - #{second_number} = #{first_number - second_number}"
prompt "#{first_number} * #{second_number} = #{first_number * second_number}"
prompt "#{first_number} / #{second_number} = #{first_number / second_number}"
prompt "#{first_number} % #{second_number} = #{first_number % second_number}"
prompt "#{first_number} ** #{second_number} = #{first_number**second_number}"

# futher exploration

# If the second number is zero it will throw a "ZeroDivisionError" in the division and modulo operation.

def prompt(msg)
  puts "==> #{msg}"
end

prompt ("Enter the first number:")
first_number = gets.chomp.to_f
prompt ("Enter the second number:")
second_number = gets.chomp.to_f

prompt "#{first_number} + #{second_number} = #{first_number + second_number}"
prompt "#{first_number} - #{second_number} = #{first_number - second_number}"
prompt "#{first_number} * #{second_number} = #{first_number * second_number}"
prompt "#{first_number} / #{second_number} = #{first_number / second_number}"
prompt "#{first_number} % #{second_number} = #{first_number % second_number}"
prompt "#{first_number} ** #{second_number} = #{first_number**second_number}"
