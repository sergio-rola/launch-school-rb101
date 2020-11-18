advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index("house"))

advice #=> "house training your pet dinosaur."

# If the slice method is used the string is not mutated. The return value is the same.

