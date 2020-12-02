DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angles)
  degrees, minutes, seconds = angles.to_i, 0, 0

  unless angles.to_s.to_i == angles
    minutes = ((angles % degrees) * MINUTES_PER_DEGREE)
    seconds = ((minutes % minutes.to_i) * SECONDS_PER_MINUTE)
  end

"#{degrees}#{DEGREE}#{format("%02d" ,minutes)}'#{format("%02d" ,seconds)}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# further exploration

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = ((degrees_float * SECONDS_PER_DEGREE)).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  degrees = degrees % 360
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
