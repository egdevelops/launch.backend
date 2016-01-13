
VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def winner?(player1, player2)
    player1 == 'rock' && player2 == 'scissors' ||
    player1 == 'paper' && player2 == 'rock' ||
    player1 == 'scissors' && player2 == 'paper'
end

def display_results(player, computer)
  if winner?(player, computer)
    prompt 'You win!'
  elsif winner?(computer, player)
    prompt 'You lose!'
  else
    prompt 'You tied.'
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
      prompt 'That\'s not a valid choice.' 
    end 
  end

    computer_choice = VALID_CHOICES.sample    

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}."   

    display_results(choice, computer_choice)
    
  prompt "Play again? Type 'y' for Yes or any key for No."
  replay = gets.chomp.downcase
  break unless replay.start_with?('y')
end

prompt 'Thanks for playing. :)'
