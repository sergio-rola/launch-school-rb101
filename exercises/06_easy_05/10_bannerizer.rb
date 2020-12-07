# def print_in_box(str)
#    edges_rows = "+#{"-" * (str.size + 2)}+"
#    mid_rows = "|#{" " * (str.size + 2)}|"
#    center_row = "| #{str} |"

#    puts edges_rows
#    puts mid_rows
#    puts center_row
#    puts mid_rows
#    puts edges_rows
# end

# print_in_box('To boldly go where no one has gone before.')


# further exploration 1 - Truncate

# def print_in_box(str)
#    str = str[0..75]
#    edges_rows = "+#{"-" * (str.size + 2)}+"
#    mid_rows = "|#{" " * (str.size + 2)}|"
#    center_row = "| #{str} |"

#    puts edges_rows
#    puts mid_rows
#    puts center_row
#    puts mid_rows
#    puts edges_rows
# end

# print_in_box('This is a fairly straightforward solution. To simplify matters, we start out by setting horizontal_rule and empty_line to appropriate values for the top and bottom 2 lines of the box. The expression '' * (message.size + 2) simply')


# further exploration 2

def center_rows_of_big_strings(str)
  remaining_str = str.size
  center_rows = []
  start_index = 0

  while remaining_str > 0
    if remaining_str > 76
      center_rows << str.slice(start_index, 76)
      start_index += 76
    elsif remaining_str < 76
      center_rows << (str.slice(start_index, 76)) + (" " * (76 - remaining_str))
    end
    remaining_str -= 76
  end

  center_rows
end

def print_in_box_warped(str)
  if str.size < 76
    edges_rows = "+#{'-' * (str.size + 2)}+"
    mid_rows = "|#{' ' * (str.size + 2)}|"
    center_rows = [str]
  else
    edges_rows = "+#{'-' * 78}+"
    mid_rows = "|#{' ' * 78}|"
    center_rows = center_rows_of_big_strings(str)
  end

  puts edges_rows
  puts mid_rows
  center_rows.each { |section| puts "| #{section} |" }
  puts mid_rows
  puts edges_rows
end

print_in_box_warped('This is a fairly straightforward solution. To simplify matters, we start outby setting horizontal_rule and empty_line to appropriate values for the top and bott This is a fairly straightforward solution. To simplify matters, we TT')

print_in_box_warped('This is a fairly straightforward solution. To simplify matters, we start')
