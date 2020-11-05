# 06_reverse_it_part_2.rb

def reverse_words(str)
  words = str.split.map do |word|
    word.size > 5 ? word.reverse : word
  end

  words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
