# further exploration

DIGITS_ARR = %w(zero one two three four five six seven eight nine)

def integer?(num)
  num.to_i.to_s == num
end

def remove_spaces_between_numbers(str)
  result = ""
  str.chars.each.with_index do |char, idx|
    unless char == " " && integer?(str[idx - 1]) && integer?(str[idx + 1])
      result += char
    end
  end
  result
end

def word_to_digit(str)
  DIGITS_ARR.each.with_index do |_, idx|
     str.gsub!(/\b#{DIGITS_ARR[idx]}\b/i, "#{idx.to_s}") # gsub! discards case
  end

  str = remove_spaces_between_numbers(str)

  number = ""
  string_only_alpha = ""
  str.chars.each.with_index do |char, idx|
    integer?(char) ? number << char : string_only_alpha << char
  end

  "#{string_only_alpha}(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
end

p word_to_digit('Please call me at nine Two fIve five five One two three four zero') #=> Please call me at (925) 551-2340
