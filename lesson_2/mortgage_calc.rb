def prompt(message)
  puts("=> #{message}")
end

prompt 'Hello, what is your name?'
name = ''
loop do 
  name = gets.chomp
  if name.empty?()
    prompt 'Please enter a valid name:'
  else
    break
  end
end

loop do
  prompt "Okay, #{name}; let\'s calculate your mortgage.
         You will need the following information:
         Your exact loan amount.
         Your Annual Percentage Rate (APR).
         Your loan duration calculated in months."

  ready = ''
  loop do
    prompt 'Do you have the required information?'
    prompt "Press 'y' for Yes 'n' for No."
    ready = gets.chomp
    if ready.downcase.start_with?('n')
      puts 'Please return with required info.'
    else
      break
    end
  end

  loan = ''
  prompt 'Great: let\'s get started. Please enter your loan amount:'
  loan = gets.chomp.to_i

  apr = ''
  prompt 'Enter the Annual Percentage Rate (APR) you qualified for:'
  apr = gets.chomp.to_f

  time = ''
  prompt 'What is your loan duration in months:'
  time = gets.chomp.to_i  

  monthly_rate = apr / 12
  mortgage = loan * monthly_rate / time

  prompt "You\'re mortgage payments will be: $#{format('%02.2f', mortgage)} per month." 

  prompt 'Would you like to calculate another mortgage?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thank you for using my Mortgage Calculator.'