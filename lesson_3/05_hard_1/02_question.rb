greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => {a: hi there}

# informal_greeting variable is referencing the original object with the value of 'hi'. When use the String#<< method with the value of ' there', it mutates the value for which informal_greeting is pointing. This means also that the original object is mutated.
