VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if 
    player == 'rock' && computer == 'scissors' ||
    player == 'paper' && computer == 'rock' ||
    player == 'scissors' && computer == 'paper'
    prompt 'You won!'
  elsif 
    player == 'rock' && computer == 'paper' ||
    player == 'paper' && computer == 'scissors' ||
    player == 'scissors' && computer == 'rock' 
    prompt 'You lose!'
  else 
    player == computer
    prompt 'You tied!'
  end
end

replay = ''
loop do #main loop
  
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}:"
    choice = Kernel.gets.chomp.downcase 

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end 
  end

    computer_choice = VALID_CHOICES.sample    

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}."   

    display_results(choice, computer_choice)
    
  prompt "Play again? Type y for yes or n for no."
  replay = gets.chomp.downcase
  break unless replay.start_with?('y')
end

prompt "Thanks for playing. :) "
