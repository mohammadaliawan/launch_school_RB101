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

Yes there is a difference. Both methods have the same return value but
rolling_buffer1 modifies the passed in array. While rolling_buffer1 does
not. Instead it returns a new array.