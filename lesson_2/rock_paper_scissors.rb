VALID_CHOICES = %w[rock paper scissors lizard spock]
player_choice = ''
computer_choice = ''
player_score = 0
computer_score = 0

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && %w[scissors lizard].include?(second)) ||
    (first == 'paper' && %w[rock spock].include?(second)) ||
    (first == 'scissors' && %w[paper lizard].include?(second)) ||
    (first == 'lizard' && %w[paper spock].include?(second)) ||
    (first == 'spock' && %w[scissors rock].include?(second))
end

def display_results(player_choice, computer_choice)
  if win?(player_choice, computer_choice)
    prompt('You won!')
  elsif computer_choice == player_choice
    prompt("It's a tie!")
  else
    prompt('Computer won!')
  end
end

def announce_winner(player_score, computer_score)
  prompt('You won the match!') if player_score == 3
  prompt('Better luck next time!') if computer_score == 3
end

def obtain_player_choice
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_input = gets.chomp.downcase

    next prompt('Please be more specific, both Scissors and Spock begin with S') if player_input == 's'

    player_choice = which_selection_slice(player_input)

    break if VALID_CHOICES.include?(player_choice)

    prompt("That's not a valid choice.")
  end
  player_choice
end

def which_selection_slice(player_input)
  return 'rock' if player_input[0] == 'r'
  return 'paper' if player_input[0] == 'p'
  return 'scissors' if player_input[0..1] == 'sc'
  return 'lizzard' if player_input[0] == 'l'
  return 'spock' if player_input[0..1] == 'sp'
end

prompt('Welcome to Rock Paper Scissors Lizard Spock!')
prompt('You win if you get to 3 points before the computer.')

loop do
  loop do
    computer_choice = VALID_CHOICES.sample
    player_choice = obtain_player_choice

    prompt("You chose #{player_choice} and the computer chose #{computer_choice}")

    display_results(player_choice, computer_choice)

    player_score += 1 if win?(player_choice, computer_choice)
    computer_score += 1 if !win?(player_choice, computer_choice) && computer_choice != player_choice

    prompt("The score is #{player_score}-#{computer_score}")

    announce_winner(player_score, computer_score)

    break if player_score == 3 || computer_score == 3
  end

  prompt('Do you want to play again?')
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end
