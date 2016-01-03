Kernel.puts('Enter first number:')
num1 = Kernel.gets().chomp().to_i

Kernel.puts('Enter second number:')
num2 = Kernel.gets().chomp().to_i

Kernel.puts('Enter operation: + to add , - to subtract, * to multiply or / to divide')
operation = Kernel.gets().chomp()

if operation == '+'
  result = num1 + num2

elsif operation == '-'
  result = num1 - num2

elsif operation == '*'
  result = num1 * num2

else result = num1.to_f() / num2.to_f()

end
 
Kernel.puts("The result is #{result}")
