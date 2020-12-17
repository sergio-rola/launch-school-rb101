def neutralize(sentence)
  neutralized = ""
  words = sentence.split(' ')
  words.each { |word| neutralized += word + ' ' if !negative?(word) }
  neutralized
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# We should never mutate and iterate through an array at the same time. When we delete "boring" from the array, we change the array structure and because of that the next iteration value at that index that was supossed to be boring is now cards. It skipped one of the elements of the array.
