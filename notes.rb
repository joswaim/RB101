# puts 'Hello'
# is a method invocation - we invoke the method puts to print the string object containing 'Hello'

# str = 'a string'

# def str
#   'a method'
# end

# p str
# p str()

# require 'prime'

# def is_prime?(num)
#   num.prime?
# end

# (1..5).each { |n| is_prime?(n) }




# you cannot initialize variables inside blocks
# str = 'Hello'

loop do
  str = 'world'
  break
end

puts str