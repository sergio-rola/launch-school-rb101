# 08_sum_or_product_of_consecutive_integers.rb

# asks the user to enter an integer greater than 0
# asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def prompt(msg)
  puts ">> #{msg}"
end

num = ''
loop do
  prompt "Please enter an integer greater than 0:"
  num = gets.chomp
  break if num.to_f > 0 && (num.to_f % 2 == 1 || num.to_f % 2 == 0)
  prompt "That's an invalid number!"
end

choice = ''
loop do
  prompt "Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp.downcase
  break if choice == 's' || choice == "p"
  prompt "That's not a valid choice!"
end

case choice
when 's'
  sum = (1..num.to_i).sum
  prompt "The sum of the integers between 1 and #{num} is #{sum}."
when 'p'
  product = (1..num.to_i).inject(&:*)
  prompt "The product of the integers between 1 and #{num} is #{product}."
end
