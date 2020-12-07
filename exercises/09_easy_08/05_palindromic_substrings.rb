def leading_substrings(str)
  results = []

  0.upto((str.size) - 1) { |idx| results << str[0..idx] }

  results
end

def substrings(str)
  results = []

  0.upto((str.size) - 1) do |num|
    results += leading_substrings(str[num..-1])
  end

  results
end

def palindrome?(str)
  return false if str.size == 1
  str == str.reverse
end

def palindromes(str)
  results = []

  substrings(str).each do |sub_str|
    results << sub_str if palindrome?(sub_str)
  end

  results
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


# further exploration

def leading_substrings(str)
  results = []
  no_alpha_str = str.gsub(/[^a-z0-9]/i, "") # --> ignore non alphanumeric

  0.upto((no_alpha_str.size) - 1) { |idx| results << no_alpha_str[0..idx] }

  results
end

def substrings(str)
  results = []

  0.upto((str.size) - 1) do |num|
    results += leading_substrings(str[num..-1])
  end

  results
end

def palindrome?(str)
  return false if str.size == 1
  no_alpha_str = str.gsub(/[^a-z0-9]/i, "")
  str.downcase == str.downcase.reverse # --> ignore case
end

def palindromes_alpha_num(str)
  results = []

  substrings(str).each do |sub_str|
    results << sub_str if palindrome?(sub_str)
  end

  results
end

palindromes_alpha_num('mAdam') #=> ["mAdam", "Ada"]
palindromes_alpha_num('hello-Madam-did-madam-goodbye') #=> ["ll", "Madam", "Madamdidmadam", "Madam", "Madamdidmadam", "ada", "adamdidmada", "damdidmad", "amdidma", "mdidm", "did", "did", "madam", "madam", "ada", "oo"]
