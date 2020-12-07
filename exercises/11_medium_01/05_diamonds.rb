def diamond(num)
  stars_num = 1
  spaces = num / 2

  (num / 2).times do |n|
    stars = "*" * stars_num
    puts stars.center(num)
    stars_num += 2
  end

  puts "*" * stars_num

  (num / 2).times do |n|
    stars_num -= 2
    stars = "*" * stars_num
    puts stars.center(num)
  end
end

diamond(1)
diamond(3)
diamond(9)


# LS solution

def print_row(grid_size, distance_from_center)
  num_stars = grid_size - distance_from_center * 2
  stars = "*" * num_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  0.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(9)
