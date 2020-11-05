# 07_stringy_strings.rb

def stringy(num)
  string = ""

  i = 0
  while i < num do
    i.even? ? string << "1" : string << "0"
    i += 1
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# further exploration

def stringy(num, option = 1)
  string = ""

  num.times do |i|
    if option == 0
      i.even? ? string << "0" : string << "1"
    else
      i.even? ? string << "1" : string << "0"
      end
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4,0) == '0101'
puts stringy(7,0) == '0101010'
