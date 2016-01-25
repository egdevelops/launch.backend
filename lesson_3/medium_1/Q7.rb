# Q7 Debug Fibonacci Method


def fib(first_num, second_num, limit)
	while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1,15)
puts "Result is #{result}"

# My Solution:
# I would add it as 3rd argument to parameter