# 05_reverse_it_part_1.rb

def reverse_sentence(str)
  reversed_sentence = ""
  str.split.reverse.each { |word| reversed_sentence << word + " " }
  reversed_sentence.strip
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# further exploration

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
