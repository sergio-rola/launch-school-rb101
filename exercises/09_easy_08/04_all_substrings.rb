def substrings(str)
  sub_strings = []

  while !str.empty?
    1.upto(str.size) { |num| sub_strings << str.slice(0, num) }
    str = str.delete(str[0])
  end

  sub_strings
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


# further exploration

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

  substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
