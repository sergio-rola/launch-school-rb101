def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    is_an_ip_number?(word)
    return false unless is_an_ip_number?(word)
  end

  true
end

def is_an_ip_number?(word)
  word.to_i >= 0 && word.to_i <= 255
end

p dot_separated_ip_address?("4.5.5") == false
p dot_separated_ip_address?("0.43.255.10") == true
p dot_separated_ip_address?("1.2.3.4.5") == false
p dot_separated_ip_address?("340.43.8.10") == false
