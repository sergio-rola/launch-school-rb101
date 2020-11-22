# def age_group(age)
#   case age
#   when (0..17) then 'kid'
#   when (18..64) then 'adult'
#   else "senior"
#   end
# end

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, value|
#   age = value["age"]
#   value["age_group"] = age_group(age)
# end

# munsters

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, values|
  case values['age']
  when 0..17 then values['age_group'] = 'kid'
  when 18..64 then values['age_group'] = 'adult'
  else values['age_group'] = 'senior'
  end
end

p munsters
