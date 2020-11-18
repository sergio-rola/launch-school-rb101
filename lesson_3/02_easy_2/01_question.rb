ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")

# option 1
ages.key?("Herman")

# option 2

ages.member?("Spot")
