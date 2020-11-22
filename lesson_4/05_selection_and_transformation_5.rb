def select_letter(string, char)
  repeated_character = ''
  counter = 0

  loop do
    break if counter == string.size

    if string[counter] == char
      repeated_character += char
    end

    counter += 1
  end

  repeated_character
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
