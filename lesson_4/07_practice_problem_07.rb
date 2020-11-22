statement = "The Flintstones Rock"
frequency = {}

statement.delete(" ").chars.each do |char|
  unless frequency.has_key?(char)
    frequency[char] = 1
  else
     frequency[char] += 1
  end
end

frequency.sort.to_h

# futher exploration

statement = "The Flintstones Rock"
result = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

result
