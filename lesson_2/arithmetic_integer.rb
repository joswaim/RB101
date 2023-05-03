def say(text)
  puts "==> #{text}"
end

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
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end


def exponent(num1, num2)
  num1 ** num2
end

say('Enter the first number:')
first_num = gets.chomp.to_f
say('Enter the second number:')
second_num = gets.chomp.to_f

say("#{first_num} + #{second_num} = #{add(first_num, second_num)}")
say("#{first_num} - #{second_num} = #{subtract(first_num, second_num)}")
say("#{first_num} * #{second_num} = #{multiply(first_num, second_num)}")
say("#{first_num} / #{second_num} = #{divide(first_num, second_num)}")
say("#{first_num} % #{second_num} = #{remainder(first_num, second_num)}")
say("#{first_num} ** #{second_num} = #{exponent(first_num, second_num)}")
