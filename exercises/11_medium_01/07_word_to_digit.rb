DIGITS_ARR = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  DIGITS_ARR.each.with_index do |str_number, idx|
   if str.match(/\b#{DIGITS_ARR[idx]}\b/)
     str.gsub!(/\b#{DIGITS_ARR[idx]}\b/, "#{idx.to_s}")
    end
  end

  str
end

p word_to_digit('Please callnine me at five five five one two three four. Thanks.') == 'Please callnine me at 5 5 5 1 2 3 4. Thanks.'
