# 08_rock_paper_scissors_bonus.rb

WINS = 5

WIN = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'spock' => ['lizard', 'rock'],
  'lizard' => ['paper', 'spock'],
  'scissors' => ['lizard, paper']
}

VALID_CHOICES = {
  'rock' => 'r', 'paper' => 'p', 'scissors' => 's',
  'lizard' => 'l', 'spock' => 'sp'
}

def prompt(message)
  puts("==> #{message}")
end

def display_choices(choices)
  display_string = "Choose one: "

  choices.each do |choice|
    display_string << "(#{choice.last})#{choice.first}, "
  end

  display_string.slice!(-2..-1)
  display_string
end

def win?(first, second)
  return false if first == second
  WIN[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won the tie!")
  elsif win?(computer, player)
    prompt("Computer won the tie!")
  else
    prompt("it's a tie!")
  end
end

def display_wins(player, computer)
  prompt("Player:#{player} | Computer:#{computer}")
end

def display_winner(player, computer)
  if player == WINS
    prompt "Player has won the game!"
  elsif computer == WINS
    prompt "Computer has won the game!"
  end
end

loop do
  system('clear')
  player_wins = 0
  computer_wins = 0

  loop do
    choice = ''
    loop do
      prompt(display_choices(VALID_CHOICES))
      choice = gets.chomp
      system('clear')

      if VALID_CHOICES.values.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end


    computer_choice = VALID_CHOICES.keys.sample

    puts "You chose: #{VALID_CHOICES.key(choice)}; " \
         "computer chose: #{computer_choice}"

    display_results(VALID_CHOICES.key(choice), computer_choice)

    if win?(VALID_CHOICES.key(choice), computer_choice)
      player_wins += 1
    elsif win?(computer_choice, VALID_CHOICES.key(choice))
      computer_wins += 1
    end

    display_wins(player_wins, computer_wins)

    break if player_wins == WINS || computer_wins == WINS
  end

  display_winner(player_wins, computer_wins)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
