# Q6 Implementation of Rolling Buffer.
# Difference between two options << and + for modifying the buffer.

# Buffer 1: <<
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

p rolling_buffer1()

# << mutates the caller (Destructive)

# Buffer 2: +
#def rolling_buffer2(buffer, max_buffer_size, new_element)
#  buffer = input_array + [new_element]
#  buffer.shift if buffer.size >= max_buffer_size
#  buffer
#end#

#p rolling_buffer2()

# + does not mutate the caller (Non-Destructive)