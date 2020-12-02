MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  hours = hours % HOURS_PER_DAY
  "#{format("%02d", hours)}:#{format("%02d", minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# further exploration

require 'time'

MIDNIGHT = Time.parse("00:00")
SECS_PER_MINUTE = 60

def time_of_day(delta_minutes)
   time = MIDNIGHT + (delta_minutes * SECS_PER_MINUTE)
   time.strftime("%A %H:%M")
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
