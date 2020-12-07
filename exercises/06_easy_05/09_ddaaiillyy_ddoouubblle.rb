def crunch(str)
  crunch = ""
  str.chars.each do |char|
    crunch << char unless crunch[-1] == char
  end

  crunch
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
