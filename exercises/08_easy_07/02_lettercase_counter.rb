def letter_case_count(str)
  char_type_count = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if char.match(/[a-z]/)
      char_type_count[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      char_type_count[:uppercase] += 1
    else
      char_type_count[:neither] += 1
    end
  end

  char_type_count
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
