DIGIT_TO_INT = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
}

def string_to_signed_integer(str)
  digits = str.gsub(/[^0-9]/, '').chars.map { |char| DIGIT_TO_INT[char] }
  sum = 0

  digits.each { |units| sum = sum * 10 + units }

  str[0].match("-") ? -sum : sum
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
