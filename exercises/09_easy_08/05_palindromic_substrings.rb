def leading_substrings(str)
  sub_strings = []

  1.upto(str.size) { |num| sub_strings << str.slice(0, num) }

  sub_strings
end

def substrings(str)
  sub_strings = []

  (0..(str.size - 1)).each do |num|
    sub_strings += leading_substrings(str[num..(str.size - 1)])
  end

  sub_strings
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

def palindromes(str)
  palindromes = []
  sub_strings = substrings(str)

  sub_strings.each { |sub_str| palindromes << sub_str if palindrome?(sub_str) }

  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
