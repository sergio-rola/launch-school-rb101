# 08_palindromic_strings_1.rb

# further exploration

#The reverse method works for both strings and arrays.

def palindrome?(elements)
  elements == elements.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 1]) == true
p palindrome?([1, 2, 1, 1]) == false
