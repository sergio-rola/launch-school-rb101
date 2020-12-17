password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

# The issue is that the variable password is not accessible inside the method verify_password.

# We need first to assign the new value of the new password (return value of set_password method) to the password variable. Then we need to pass the value of the password variable to the verify_password method. As the method has no parameter to look for the value, we need to create one to access it.
