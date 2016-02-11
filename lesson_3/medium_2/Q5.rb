# Q5 What is output

answer = 42 # Declare local variable

def mess_with_it(some_number) # Define method that accepts numerical value
  some_number += 8 # Returns numerical value +8 in new object (non-destructive)
end

new_answer = mess_with_it(answer) # new_answer variable not used

p answer -8

# => 36
# I overthought it!