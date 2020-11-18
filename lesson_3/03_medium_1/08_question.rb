def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock") #=> "paper"
# First we evaluate the inner most expressions:
# rps("rock", "paper") and rps("rock", "scissors")
# Then evalutate the result of rps("paper", "rock")) which is the result of the two previous evaluations. Finally all there is left is rps("paper", "rock") to be evaluated.
