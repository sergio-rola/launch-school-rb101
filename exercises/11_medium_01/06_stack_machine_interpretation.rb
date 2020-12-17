# further exploration

VALID_COMMANDS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

def valid_command?(str)
    VALID_COMMANDS.include?(str)
end

def valid_integer?(str)
  (str.to_i.to_s == str && str.to_i > 0)
end

def minilang(str)
  register = 0
  stack = []

  if str.split.all? { |word| valid_command?(word) || valid_integer?(word) }
    nil
  else
    puts "This is an invalid command!"
    return #check for invalid tokens
  end

  str.split.each do |command|
    if command.to_i.to_s == command && command.to_i > 0
      register = command.to_i
    elsif command == 'PUSH'
      stack << register
    elsif command == 'ADD'
      register += stack.pop
    elsif command == 'SUB'
      register -= stack.pop
    elsif command == 'MULT'
      register *= stack.pop
    elsif command == 'DIV'
      register /= stack.pop
    elsif command == 'MOD'
      register %= stack.pop
    elsif command == 'POP'
      register = stack.pop
    elsif command == 'PRINT'
      puts register
    end
  end
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
