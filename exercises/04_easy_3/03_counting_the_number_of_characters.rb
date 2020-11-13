# 03_counting_the_number_of_characters.rb

print "Please write word or multiple words: "
words = gets.chomp
char_count = words.gsub(" ", "").size
puts "There are #{char_count} characters in \"#{words}\"."
