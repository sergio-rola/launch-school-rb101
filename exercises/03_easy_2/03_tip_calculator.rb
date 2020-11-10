# 03_tip_calculator.rb

#further exploration

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percentage = gets.chomp.to_f

tip = bill * percentage / 100
total = tip + bill

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"
