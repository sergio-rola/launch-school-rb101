def convert_to_percentage!(result_hash, str)
  result_hash.map do |key, value|
    percent = (value.to_f / str.size * 100)
    if percent.to_i - percent == 0
      result_hash[key] = percent.to_i
    else
      result_hash[key] = percent
    end
  end

  result_hash
end

def letter_percentages(str)
  char_type_count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    char_type_count[:lowercase] += 1 if char =~ /[a-z]/
    char_type_count[:uppercase] += 1 if char =~ /[A-Z]/
    char_type_count[:neither] += 1 if char =~ /[^a-z]/i
  end

  convert_to_percentage!(char_type_count, str)
end

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# further exploration

def convert_to_percentage!(result_hash, str)
  result_hash.map do |key, value|
    percent = (value.to_f / str.size * 100)
    result_hash[key] = percent.round(2)
  end

  result_hash
end

def letter_percentages(str)
  char_type_count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    char_type_count[:lowercase] += 1 if char =~ /[a-z]/
    char_type_count[:uppercase] += 1 if char =~ /[A-Z]/
    char_type_count[:neither] += 1 if char =~ /[^a-z]/i
  end

  convert_to_percentage!(char_type_count, str)
end

p letter_percentages('abcdefGHI') == { :lowercase => 66.67, :uppercase => 33.33,
                                     :neither => 0.0 }
