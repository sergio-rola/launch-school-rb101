VALID_CHOICES = {
  'rock' => 'r', 'paper' => 'p', 'scissors' => 's',
  'lizard' => 'l', 'spock' => 'p'
}

def display_choice(choices)
  choices = "Choose one:"
  choices.each { |choice| choices << ""}
  put choises
end

display_choice(VALID_CHOICES)
