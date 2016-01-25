# Q4 What happens when modifying over array?

#numbers = [1, 2, 3, 4]
#numbers.each do |number|
#  p number
#  numbers.shift(1)
#end

# Causes strange behavior:
# =>
# 1
# 3


# What about this one?

#numbers = [1, 2, 3, 4]
#numbers.each do |number|
#  p number
#  numbers.pop(1)
#end

# Strange behavior:
# =>
# 1
# 2

# Augmented with debugging info:

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index} #{numbers.inspect} #{number}"
  numbers.shift(1)
end

# =>
# "0 [1, 2, 3, 4] 1"
# "1 [2, 3, 4] 3"