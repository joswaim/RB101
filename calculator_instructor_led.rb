# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation ont he two numbers
# output the result

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_f.to_s == num
end

def number?(num)
  num.count('a-zA-Z').positive?
end

def operation_to_message(oper)
  case oper
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to Calculator! Enter your name:')

name = ''
loop do
  name = gets.chomp
  prompt('Make sure to use a valid name.') if name.empty?
  break unless name.empty?
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp
    break if valid_number?(number1)

    prompt("Hmmm... that doesn't seem to be a valid number.")
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp
    break if valid_number?(number2)

    prompt("Hmmm... that doesn't seem to be a valid number.")
  end

  # <<- is a delimiter and allows you to apply some strings into a variable. the three letters MSG can be whatever you
  # want as long as it starts and ends your variable string its called a heredoc
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG

  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp
    break if [1, 2, 3, 4].include?(operator.to_f)

    prompt('Must choose 1, 2, 3, or 4.')
  end

  prompt("#{operation_to_message(operator)} the two numbers....")

  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2
            end

  prompt("The result is #{result}")

  prompt('Do you want to perform another calculation? (Y to calculate again)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the calculator.')
