# 01_how_old_is_teddy.rb

puts "Teddy is #{rand(20...200)} years old!"

# further exploration

puts "What's you name?"
name = gets.chomp
return puts "Teddy is #{rand(20...200)} years old!" if name.empty?
puts "#{name} is #{rand(20...200)} years old!"
