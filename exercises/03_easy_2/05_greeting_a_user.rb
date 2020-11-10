# 05_greeting_a_user.rb

puts "What is your name?"
name = gets.chomp

if name [-1] != "!"
  puts "Hello #{name}."
else
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
end
