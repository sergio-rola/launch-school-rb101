# 01_search_101.rb

ORDINALS = %w(1st 2nd 3rd 4th 5th last)
numbers = []

def prompt(msg)
  puts ("==> #{msg}")
end

def ask_for_number(ordinal)
  prompt("Enter the #{ordinal} number: ")
end

ORDINALS.each_index do |i|
  ask_for_number(ORDINALS[i])
  numbers << gets.chomp.to_i
end

last_number = numbers.last
numbers.pop

if numbers.include?(last_number)
  prompt "The number #{last_number} appears in #{numbers}"
else
  prompt "The number #{last_number} does not appear in #{numbers}"
end
