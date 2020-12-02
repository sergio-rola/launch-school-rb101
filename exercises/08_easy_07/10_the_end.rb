def penultimate(str)
  str.split.at(-2)
end


penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'


# further exploration

# edge cases:
#   - one word
#   - empty string
#   - if even number of words return two middle words

def middle(str)
  middle = ""
  words = str.split

  if words.size == 1
    middle = str
  elsif words.size.even? && !str.empty?
    middle << words[words.size / 2 - 1] << " " << words[(words.size / 2)]
  elsif words.size.odd?
     middle << words[words.size / 2.0]
  end

 p middle
end


middle('last word') == 'last word'
middle('Launch School is great!') == 'School is'
middle('Launch School is great insn\'t it!') == 'is great'
middle('Launch School is great again!') == 'is'
middle('word') == 'word'
middle('') == ''
