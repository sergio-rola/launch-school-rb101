DIGIT_TO_INT = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
}

def string_to_integer(str)
  arr = str.chars.map { |char| DIGIT_TO_INT[char] }.reverse
  sum = arr[0]

  (1..arr.size - 1).each { |units| sum += arr[units] * 10**(units) }

  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


# further exploration

DIGIT_TO_INT = {
 '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
 '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  arr = str.chars.map { |char| DIGIT_TO_INT[char] }
  sum = 0

  arr.each { |units| sum = sum * 10 + units }

  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


# further exploration

DIGIT_TO_HEX = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6,
  "7" => 7, "8" => 8, "9" => 9, "A" => 10, "B" => 11, "C" => 12, "D" => 13,
  "E" => 14, "F" => 15
}


def hexadecimal_to_integer(hex)
  arr = hex.chars.map { |char| DIGIT_TO_HEX[char.upcase] }
  sum = 0
  arr.each { |units| sum = sum * 16 + units }

  sum
end

p hexadecimal_to_integer('4D9f') == 19871
