def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.sum != 180, angles.include?(0)
    :invalid
  when angles.all? { |angle| angle < 90 }
    :acute
  when angles.include?(90)
    :right
  else
    :obtuse
  end
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
