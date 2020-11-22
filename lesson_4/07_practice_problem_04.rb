ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages_arr = []

ages.each { |_, age| ages_arr << age }

p min_age = ages_arr.min
