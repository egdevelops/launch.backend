def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op  
  when '+'
    'Adding'
  when '-'
    'Subtracting'
  when '*'
    'Multiplying'
  when '/'
    'Dividing'
  end
end

prompt('Welcome to My Calculator. Enter your name:')

name = ''
loop do  
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('Please enter valid name:')
  else
    break
  end
end

prompt("Hello #{name}, let's calculate.")

loop do # main loop
  num1 = '' 
  loop do
    prompt('Enter your first number:')
    num1 = Kernel.gets().chomp().to_i 

    if valid_number?(num1)   
      break
    else
      prompt('Please enter a valid number:')
    end
  end 

  num2 = '' 
  loop do
    prompt('Enter your second number:')
    num2 = Kernel.gets().chomp().to_i 

    if valid_number?(num2)
      break
    else
      prompt('Please enter a valid number:')
    end
  end 

  str = ''  
  
  prompt('Choose operator: 
         + to add, 
         - to subtract, 
         * to multiply,
         / to divide.')
  
  operator = ''
  loop do  
    operator = Kernel.gets().chomp()  

    if %w(+ - * /).include?(operator)
      break
    else
      prompt('You must choose a valid operator')
    end
  end

  prompt("#{operation_to_message(operator)}")

  result = case operator
            when '+'
             result = num1 + num2
            when '-'
              result = num1 - num2
            when '*'
             result = num1 * num2
            when '/'
              num1.to_f() / num2.to_f()
  end         

  prompt("The result is #{result}")

  prompt('Do you want to perform another calculation? (Y to calculate again)')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you")