def uppercase?(str)
  alphabetic = str.gsub(/[^A-Z]/i, "")
  alphabetic.chars.all? { |char| char =~ /[A-Z]/ }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
