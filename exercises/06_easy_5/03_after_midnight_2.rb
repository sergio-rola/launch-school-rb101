MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours = time[0,2].to_i % HOURS_PER_DAY
  minutes = time[3,2].to_i
  hours * MINUTES_PER_HOUR + minutes
end

def before_midnight(time)
  (MINUTES_PER_DAY - after_midnight(time)) % MINUTES_PER_DAY
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0


# further exploration

require 'time'

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
SECS_PER_MINUTE = 60
MIDNIGHT = Time.parse("00:00")

def after_midnight(time_str)
  input_time = Time.parse(time_str)
  delta_minutes = ((input_time - MIDNIGHT).to_i / SECS_PER_MINUTE)
  delta_minutes % MINUTES_PER_DAY
end

def before_midnight(time_str)
  (MINUTES_PER_DAY - after_midnight(time_str)) % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
