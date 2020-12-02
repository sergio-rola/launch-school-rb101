def swapcase(str)
  swapcase = str.chars.map do |char|
    ("A".."Z").include?(char)? char.downcase : char.upcase
  end

  swapcase.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
