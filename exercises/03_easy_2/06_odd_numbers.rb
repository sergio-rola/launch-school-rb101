# 06_odd_numbers.rb

# Print all odd numbers from 1 to 99, inclusive
# All numbers should be printed on separate lines.

(1..99).each { |num| puts num if num.odd? }


# further exploration 1

i = 1

until i > 100
  puts i if i % 2 == 1
  i += 1
end


# further exploration 2

1.upto(99) { |num| puts num if num.odd? }


# further exploration 3

puts (1..99).select(&:odd?)
