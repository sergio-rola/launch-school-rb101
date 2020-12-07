def ascii_value(str)
  p str.chars
  str.chars.map { |char| char.ord  }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# futher exploration
# #ord method only computes the first character of a string. Any subsequent character is ignored.

char.ord.chr == char
