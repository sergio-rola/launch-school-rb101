def double_consonants(str)
  result = ''

  str.chars.each do |char|
    char =~ /[b-df-hj-np-tv-z]/i ? result += char * 2 : result += char
  end

  result
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
