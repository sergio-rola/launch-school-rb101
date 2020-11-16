def leap_year?(year)
  return true if year % 400 == 0
  year % 4 == 0 && year % 100 != 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# further exploration 1

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0 #=> It will fail for this evaluation. The previous evaluation returns false if a year is divisible by 100 with no remainder. As 100 is a multiple of 400 this branch of logic will never be evaluated.
    true
  else
    year % 4 == 0
  end
end

# further exploration 2

def leap_year?(year)
  return true if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
