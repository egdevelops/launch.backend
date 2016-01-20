# Q1 What is expected output?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# => 
# 1
# 2
# 2
# 3

# returns new 'unique' array [1, 2, 3]
# will only modify numbers array if banged-!#

# 'p numbers' (which calls inspect 
# (same as puts numbers.inspect)) would output:
# => [1, 2, 2, 3]