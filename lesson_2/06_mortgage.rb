# 06_mortgage.rb

def prompt(msg)
  puts "==> #{msg}"
end

def positive_int?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_positive_number?(num)
  num.to_f > 0 && (num.to_f.to_s == num || num.to_i.to_s == num)
end

def calculate_monthly_pay(loan, monthly_interest_rate, loan_duration_months)
  loan * ((monthly_interest_rate) \
  / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
end

system('clear')

prompt('Welcome to the Mortage Calculator')

loop do
  prompt('Please tell us the loan amount.')

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || valid_positive_number?(loan_amount) == false
      prompt('Please input a valid loan amount!')
    else
      break
    end
  end

  prompt('Please tell us the APR percentage. Example: 5 is 5%')

  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || valid_positive_number?(apr) == false
      prompt('Please input a valid APR percentage!')
    else
      break
    end
  end

  prompt('Please tell us the loan duration in years.')

  loan_duration_years = ''
  loop do
    loan_duration_years = gets.chomp
    if loan_duration_years.empty? || positive_int?(loan_duration_years) == false
      prompt('Please input a valid loan duration.')
    else
      break
    end
  end

  loan_amount = loan_amount.to_f
  loan_duration_months = loan_duration_years.to_i * 12
  monthly_interest_rate = apr.to_f / 100 / 12

  monthly_pay = calculate_monthly_pay(loan_amount, monthly_interest_rate, \
                                      loan_duration_months)

  prompt("The monthly repayment is $#{format('%.2f', monthly_pay)}")

  prompt('Do you want to calculate again? Type "y". Any other key to exit.')
  answer = gets.chomp.downcase

  if answer == ("y")
    system('clear')
    next
  else
    break
  end
end

prompt('Thank you for using the calculator!')
