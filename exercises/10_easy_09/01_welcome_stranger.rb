def greetings(name, hsh)
  position = hsh.values.join(" ")

  puts "Hello, #{name.join(" ")}! Nice to have a #{position} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
