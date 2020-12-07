def swap(str)
  swapped = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end

  swapped.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# further exploration

# We call the word variable again at the end of the method, so the method returns the last evaluation of the method.

def swap_first_last_characters(a, b)
  a, b = b, a
end

word = "mute"

p swap_first_last_characters(word[0], word[-1]) # => ["e", "m"]

# It does not work because we only passed arguments to the method that reference to a single character inside a string at a certain index. So it just returns the reassigned swapped single characters.
