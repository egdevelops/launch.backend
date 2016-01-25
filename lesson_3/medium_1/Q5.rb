# Q5 Method to show factors of input number

#def factors(number)
#  dividend = number
#  divisors = []
#  begin
#    divisors << number / dividend if number % dividend == 0
#    dividend -= 1
#  end until dividend == 0
#  divisors
#end

#p factors(10)

# Change loop construct to factor 0 and - negatives:

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
divisors
end

p factors()
# => [1, 2, 5, 10]

# 0 and negatives will return empty array []