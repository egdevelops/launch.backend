VALID_CHOICES = { r: 'rock', 
                  p: 'paper',
                  s: 'scissors',
                  l: 'lizard',
                  k: 'Spock'
                } 

def prompt(message)
  puts("=> #{message}")
end

def prompt_for_weapon
  VALID_CHOICES.each do |key, value|
    prompt "Choose: '#{key}' for #{value}"
  end
end

def valid_weapon
  loop do 
    prompt_for_weapon
    weapon = gets.chomp
    player_choice = VALID_CHOICES[weapon.to_sym]
    prompt "Your choice is not valid." if player_choice.nil?
    return player_choice unless player_choice.nil?
  end
end

def winner?(player, computer)
  player == 'rock' && (computer == 'scissors' || computer =='lizard') ||
    player == 'paper' && (computer == 'rock' || computer == 'Spock') ||
    player == 'scissors' && (computer == 'paper' || computer == 'lizard') ||
    player == 'lizard' && (computer == 'paper' || computer == 'Spock') ||
    player == 'Spock' && (computer == 'rock' || computer == 'scissors')
end

def winner_of_round(player, computer)
  if winner?(player, computer)
    prompt 'You win this round!'
  elsif winner?(computer, player)
    prompt 'You lost this round - Focus!'
  else
    prompt 'You tied this round.'
  end
end

def winner_of_game(player_points, computer_points)
  if player_points > computer_points
    puts "You won the game!"
  else
    puts "Computer won the game!"
  end
end

player_points = 0
computer_points = 0

puts '-----------------------------------------------------------'
puts ''
prompt "Welcome to The Rock, Paper, Scissors, Lizard, Spock Game."
puts ''
puts '-----------------------------------------------------------'
puts ''
prompt 'The Best Out of Five Rounds Wins'.center(59)
puts ''
puts '-----------------------------------------------------------'

loop do 
  player_choice = valid_weapon

  computer_choice = VALID_CHOICES.values.sample  

  prompt "You chose: #{player_choice}; Computer chose: #{computer_choice}."

  puts '-----------------------------------------------------------'

  winner_of_round(player_choice, computer_choice)

  puts '-----------------------------------------------------------'

  player_points += 1 if winner?(player_choice, computer_choice)
  computer_points += 1 if winner?(computer_choice, player_choice)

  prompt "Your score is: #{player_points}".center(59)
  prompt "Computer's score is: #{computer_points}".center(59)

  puts '------------------------------------------------------------'
  
  break if player_points == 5 || computer_points == 5 
end

prompt 'Thanks for playing. :)'

winner_of_game(player_points, computer_points)
