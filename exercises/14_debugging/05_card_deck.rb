cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum_remaining_cards = deck.reduce(0) do |sum, (_, remaining_cards_per_deck)|
  scores_per_deck = remaining_cards_per_deck.map do |card|
    score(card)
  end
  sum += scores_per_deck.sum
end

puts sum_remaining_cards

# There is an error because the remaining_cards.map return is not being used, this means that when we call the #sum method on the remaining_cards variable, the values contain symbols arguments which throws an error.

# Our sum is wrong because our deck arrays are the same object, this means that instead of "drawing"(pop) just one card per suit, we are drawing four per suit instead. We can see that because the shuffle method! is mutating all four arrays at once. Each deck hash suit is affected by the pop and shuffle! mutation of the other suits too.
