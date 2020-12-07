def cleanup(str)
  alpha_numeric = str.gsub(/[^a-z]/, " ")
  clean = ""

  alpha_numeric.chars.each_with_index do |char, idx|
    if alpha_numeric[idx] == " " && alpha_numeric[idx + 1 ] == " "
      next
    else
      clean << char
    end
  end
  clean
end

cleanup("---what's my +*& line?") == ' what s my line '

# futher exploration

ALPHABET = ('a'..'z').to_a

def cleanup(str)
  clean_chars = ""

  str.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << " " unless clean_chars[-1] == " "
    end
  end

  clean_chars
end

cleanup("---what's my +*& line?") == ' what s my line '
