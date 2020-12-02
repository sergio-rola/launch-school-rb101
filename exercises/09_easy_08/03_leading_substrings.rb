def leading_substrings(str)
  sub_strings = []

  1.upto(str.size) { |num| sub_strings << str.slice(0, num) }

  sub_strings
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
