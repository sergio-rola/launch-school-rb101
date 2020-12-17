def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort

  unless sides[0] + sides[1] > sides[2] && sides.all?(&:positive?)
    return :invalid
  end

  if sides[0] == sides[1] && sides[1] == sides[2]
    :equilateral
  elsif sides[0] != sides[1] && sides[1] != sides[2] && sides[1]
    :scalene
  else
    :isosceles
  end
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
