print '>> Please enter an integer greater than 0: '
integer = gets.chomp.to_i
print ">> Enter 's' to compute the sum, 'p' to compute the product. "
sum_or_product = gets.chomp

def sum_of_integer(number)
  result = 0
  1.upto(number) { |num| result += num }
  result
end

def product_of_integer(number)
  result = 1
  1.upto(number) { |num| result *= num }
  result
end

puts "The sum of the integers between 1 and #{integer} is #{sum_of_integer(integer)}." if sum_or_product.downcase == 's'
puts "The product of the integers between 1 and #{integer} is #{product_of_integer(integer)}." if sum_or_product.downcase == 'p'
