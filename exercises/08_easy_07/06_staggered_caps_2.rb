def staggered_case(string, skip_non_alpha = true)
  result = ''
  switch = true
  string.chars.each do |char|
    if switch
      result += char.upcase
    else
      result += char.downcase
    end
    if skip_non_alpha
      switch = !switch if char =~ /[A-Z]/i
    else
      switch = !switch
    end
  end

  result
end

staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
