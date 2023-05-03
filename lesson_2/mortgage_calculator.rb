def number?(num)
  num.count('a-zA-Z').positive?
end

def gets_loan_duration
  loan_duration_months = ''
  loop do
    print '>> What is your remaining loan duration in months? '
    loan_duration_months = gets.chomp
    break unless number?(loan_duration_months)

    puts 'You must enter a valid number.'
    next if number?(loan_duration_months)
  end
  loan_duration_months
end

def gets_loan_amount
  loan_amount = ''
  loop do
    print '>> What is your remaining loan amount? '
    loan_amount = gets.chomp
    break unless number?(loan_amount)

    puts 'You must enter a valid number.'
    next if number?(loan_amount)
  end
  loan_amount
end

def gets_monthly_interest_rate
  monthly_interest_rate = ''
  loop do
    print '>> What is your current Annual Percentage Rate (APR)? '
    annual_percentage_rate = gets.chomp
    monthly_interest_rate = annual_percentage_rate.to_f / 1200
    break unless number?(annual_percentage_rate)

    puts 'You must enter a valid number.'
    next if number?(annual_percentage_rate)
  end
  monthly_interest_rate
end

def calculate_monthly_payment(loan_duration_months, loan_amount, monthly_interest_rate)
  loan_amount.to_f * (monthly_interest_rate.to_f / (1 - (1 + monthly_interest_rate.to_f)**(-loan_duration_months.to_i)))
end

def calc_again?
  calc_again = ''
  loop do
    print '>> Would you like to make another calculation? (Y/N): '
    calc_again = gets.chomp

    break if calc_again.upcase == 'Y' || calc_again.upcase == 'N'

    puts "I didn't quite get that."
    next
  end
  calc_again
end

loop do
  puts '>> Welcome to the monthly payment calculator.'

  loan_duration_months =    gets_loan_duration
  loan_amount =             gets_loan_amount
  monthly_interest_rate =   gets_monthly_interest_rate
  monthly_payment =         calculate_monthly_payment(loan_duration_months, loan_amount, monthly_interest_rate)

  puts "Your monthly payment: $#{monthly_payment.round(2)}"

  calc_again = calc_again?

  next if calc_again.upcase == 'Y'

  puts 'Have a wonderful day!'
  break if calc_again.upcase == 'N'
end
