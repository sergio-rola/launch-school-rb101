require 'date'

def friday_13th(year)
  friday_13th_counter = 0
  day = Date.new(year)
  number_days_in_year = 365
  number_days_in_year += 1 if day.leap?

  number_days_in_year.times do
    friday_13th_counter += 1 if day.friday? && day.mday == 13
    day += 1
  end

  friday_13th_counter
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

# further exploration

require 'date'

def fridays_5(year)
  fridays_per_month = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0,
                        7 => 0, 8 => 0, 9 => 0, 10 => 0, 11 => 0, 12 => 0 }
  day = Date.new(year)
  number_days_in_year = 365
  number_days_in_year += 1 if day.leap?

  number_days_in_year.times do
    fridays_per_month[day.month] += 1 if day.friday?
    day += 1
  end

  fridays_per_month.count { |_, fridays| fridays == 5 }
end

fridays_5(1904) == 5
fridays_5(2020) == 4
