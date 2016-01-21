# Q3 Fix Error

puts "the value of 40 + 2 is " + (40 + 2)

# Q3.rb:3:in `+': no implicit conversion of Fixnum into String (TypeError)
# from Q3.rb:3:in `<main>'

# Need to convert string to integer

# My Answer:
# puts "the value of 40 + 2 is ".to_i + (40 + 2)
# => 42 (wrong answer - no string output)

# Solutions:
# puts "the value of 40 + 2 is " + (40+2).to_s
# => the value of 40 + 2 is 42

# or:
# String Interpolation:
# puts "the value of 40 + 2 is #{40 + 2}"
# => the value of 40 + 2 is 42