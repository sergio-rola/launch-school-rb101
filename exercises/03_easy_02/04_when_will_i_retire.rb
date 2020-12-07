# 04_when_will_i_retire.rb

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.new.year
working_years = retirement_age - age
retirement_year = current_year + working_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{working_years} years of work to go!"
