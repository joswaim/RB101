def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  if num2.zero?
    puts 'You cannot divide by zero. Please start again.'
  else
    num1 / num2
  end
end

loop do
  puts 'What is your first number?'
  num1 = gets.chomp.to_i
  puts 'What is your second number?'
  num2 = gets.chomp.to_i
  puts 'Would you like to add, subtract, multiply, or divide?'
  action = gets.chomp.downcase

  if action == 'add'
    answer = add(num1, num2)
    puts "#{num1} + #{num2} = #{answer}"
  elsif action == 'subtract' 
    answer = subtract(num1, num2)
    puts "#{num1} - #{num2} = #{answer}"
  elsif action == 'multiply'
    answer = multiply(num1, num2)
    puts "#{num1} * #{num2} = #{answer}"
  elsif action == 'divide'
    answer = divide(num1, num2)
    next if num2.zero?

    puts "#{num1} / #{num2} = #{answer}"
  else
    puts "I didn't quite get that. Please start again."
    next
  end
  break
end
