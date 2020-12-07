def triangle(num)
  stars = 1
  spaces = num - 1

  until stars > num
    puts "#{" " * spaces}#{"*" * stars}"
    stars += 1
    spaces -= 1
  end
end

triangle(5)
triangle(9)

# further exploration 1

def triangle(num)
  stars = num
  spaces = num - stars

  until stars == 0
    puts "#{" " * spaces}#{"*" * stars}"
    stars -= 1
    spaces += 1
  end
end

triangle(5)
triangle(9)

# further exploration 2

def triangle(num)

  (1..num).reverse_each do |stars|
    puts "#{"*" * stars}".ljust(num)
  end
end

triangle(5)
triangle(9)

# further exploration 3

def triangle(num)

  (1..num).each do |stars|
    puts "#{"*" * stars}".ljust(num)
  end
end

triangle(5)
triangle(9)
