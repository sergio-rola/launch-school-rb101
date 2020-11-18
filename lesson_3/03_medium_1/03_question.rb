def factors(number)
  factors = []

  (1..number).each { |divisor| factors << divisor if number % divisor == 0 }
  factors
end

p factors(54)

# bonus 1
# Tto determine if the result of the division is an integer number (no remainder).

#bonus 2
# We need to call the factors variable for the method to return the values stored in factors. Otherwise it will return the Range values.
