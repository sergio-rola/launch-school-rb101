def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# There is a difference as rolling_buffer1 method is a mutating method for the buffer input argument. The Rolling_buffer2 method does not mutate the input_array argument as there is just an assigment of the -> input_array + [new_element] to the buffer variable. The caller's input argumment will not be changed.

