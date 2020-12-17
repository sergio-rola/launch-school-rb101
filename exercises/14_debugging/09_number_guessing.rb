def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
 winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
end

guess_number(10, 3)

# We are entering the recursive method after each guess not allowing the loop to work as intended (it is not looping at all). This means a different winning_number sample each time we guess. We want to "try" to guess the winning_number, a certain number of attempts up to the max_attempts value and not just once. After deleting the superfluous recursive method, the loop is working properly as attempts variable is now getting incremented. The only missing code is a breaking condition when we guess the number to exit the loop. 
