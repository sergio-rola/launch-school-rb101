def staggered_case(str)
  staggered = str.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end

  staggered.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


# further exploration

def staggered_case(str, upcase_first = true)
  staggered = str.chars.map.with_index do |char, idx|
    if upcase_first
      idx.even? ? char.upcase : char.downcase
    elsif upcase_first == false
      idx.odd? ? char.upcase : char.downcase
    end
  end

  staggered.join
end

p staggered_case('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
