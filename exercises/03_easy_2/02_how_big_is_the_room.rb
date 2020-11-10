# 02_how_big_is_the_room.rb

SQR_M_TO_SQR_FT = 10.7639

puts "Enter the length of the room in meters:"
length = gets.to_f
puts "Enter the width of the room in meters:"
width = gets.to_f

area_m = length * width
area_ft = area_m * SQR_M_TO_SQR_FT

puts "The area of the room is #{area_m} square meters (#{area_ft.round(2)}\ square feet)."

# further exploration

SQ_FT_TO_SQR_CM = 929.0304
SQ_FT_TO_SQ_INCH = 144

puts "Enter the length of the room in feet:"
length = gets.to_f
puts "Enter the width of the room in feet:"
width = gets.to_f

area_ft = (length * width).round(2)
area_sq_inch = (area_ft * SQ_FT_TO_SQ_INCH).round(2)
area_sq_cm = (area_ft * SQ_FT_TO_SQR_CM).round(2)

puts "The area of the room is #{area_ft} square feet, #{area_sq_inch} square" \
  + " inches, and #{area_sq_cm } square centimeters."
