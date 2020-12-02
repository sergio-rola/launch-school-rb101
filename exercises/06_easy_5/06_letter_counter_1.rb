def word_sizes(str)
  str_sizes = str.split(" ").map(&:size)
  count_hash = {}

  str_sizes.each do |num|
    !count_hash.key?(num) ? count_hash[num] = 1 : count_hash[num] += 1
  end

  count_hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


# further exploration

def word_sizes(str)
  counts = Hash.new(0)

  str.split.each do |word|
    counts[word.size] += 1
  end

  counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
