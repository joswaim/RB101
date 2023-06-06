# def letter_count(str)
#   str_array = str.split('')
#   str_array.sort!
#   str_array.delete_if { |letter| letter > 'A' && letter < 'Z' }
#   uniq_array = str_array.uniq
#   count_array = []
#   uniq_array.each { |letter| count_array << str_array.count(letter)}
#   uniq_array.collect! &:to_sym
#   final_hash = uniq_array.zip(count_array)
#   final_hash.to_h
# end

# p letter_count('Codewarss')

# test = [1, 2, 2, 20, 6, 20, 2, 6, 2]

# def pairs(arr)
#   uniq_arr = arr.uniq
#   uniq_arr.map! { |num| arr.count(num) }
#   uniq_arr.map! do |num|
#     if num >= 1 && num.odd?
#       num - 1
#     else
#       num
#     end
#   end
#   uniq_arr.sum / 2
# end

# p pairs(test)

# p test.count(2)


# array = ["beg", "life", "i", "to"]

# def sort_by_length(arr)
#   arr.sort_by!(& :length)
# end

# p sort_by_length(array)


# def longest(a1, a2)
#   array1 = a1.split('')
#   array2 = a2.split('')
#   array3 = array1.zip(array2)
#   array3.flatten.uniq.sort.join
# end

# a = "aretheyhere"

# b = "yestheyarehere"

# p longest(a, b)

# def repeat(str, int)
#   int.times { puts str }
# end

# repeat('Hello', 3)

# def is_odd?(int)
#   int % 2 == 1
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# def stringy(int, start = 1)
#   string = ''
#   int.times do |num|
#     if start == 1
#       string << '0' if num.odd?
#       string << '1' if num.even?
#     else
#       string << '1' if num.odd?
#       string << '0' if num.even?
#     end
#   end
#   string
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# def calculate_bonus(int, bool)
#   bool ? (int / 2) : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# def print_in_box(str)
#   hyphens_spaces = (str.length + 2)
#   puts '+' + ('-' * hyphens_spaces) + '+'
#   puts '|' + (' ' * hyphens_spaces) + '|'
#   puts '|' + " #{str} " + '|'
#   puts '|' + (' ' * hyphens_spaces) + '|'
#   puts '+' + ('-' * hyphens_spaces) + '+'
# end

# def wrap(text, width)
#   text.gsub(/(.{1,#{width}})( +|$\n?)|(.{1,#{width}})/, "\\1\\3\n")
# end

# puts wrap('Wrap a single paragraph of text, returning a list of wrapped lines.
#   Reformat the single paragraph in text so it fits in lines of no
#   more than width columns, and return a list of wrapped lines.  By
#   default, tabs in text are expanded with string.expandtabs(), and
#   all other whitespace characters (including newline) are converted to
#   space.  See TextWrapper class for available keyword args to customize
#   wrapping behaviour.', 80)
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+

# def triangle(int)
#   spaces = int
#   int += 1
#   int.times do |num|
#     puts (' ' * spaces) + ('*' * num)
#     spaces -= 1
#   end
# end

# triangle(5)

# def replace(str, value)
#   loop do
#     break
#   end
#   str = value
# end

# greet = 'Hey!'
# replace(greet, 'Hello')
# puts greet

# def a_method
#   puts "hello world"
# end

# p a_method

# p [1, 'a'].sort



# def duplicate_count(text)
#   text.upcase!
#   array = text.split('')
#   count = 0
#   loop do
#     num0 = array.first
#     if array.select { |n| n == num0 }.size >= 2
#       array.delete(num0)
#       count += 1
#     else
#       array.shift
#     end
#     break if array.empty?
#   end
#   count
# end

#   # array.each do |num0|
#   #   if array.select { |n| n == num0 }.size >= 2
#   #     p array.delete(num0)
#   #     p count += 1
#   #   end
#   # end
#   # this will not work on this because when .each is called onto the array my block deletes some of the indexes, shifting each letter down.
#   # each works on index # so every other two it deletes it will skip the letter because the index has moved.

# puts duplicate_count("aaBBCCDDEEFFMMGGH") == 8


# def century(year)
#   century_min = year % 100
#   add_century = (year - century_min) / 100
#   add_century += 1 if century_min.positive?
#   add_century
# end

# p century(89)
# p century(2002)
# p century(2000)


# def paperwork(n, m)
#   if n <= 0 || m <= 0
#     0
#   else
#     n * m
#   end
# end

# def find_short(s)
#   array = s.split(' ')
#   l = s.size
#   array.each { |word| l = word.size if l > word.size }
#   l
# end

# p find_short("bitcoin take over the world maybe who knows perhaps")


# def even_or_odd(number)
#   # without use of .odd? or .even?
#   return 'Even' if number % 2 == 0

#   'Odd'
# end


# def capitalize(s,ind)
#   array_s = s.split('')
#   ind.each do |index| 
#     next if array_s[index] == nil

#     array_s[index].upcase!
#   end
#   array_s.join
# end

# a = "abcdef"
# capitalize(a, [1, 2, 3, 100])


# def divisors(n)
#   array = []
#   (n / 2).times do |number|
#     array << 1 if (n % (number + 1)).zero?
#   end
#   array.size + 1
# end

# p divisors(10)


# def two_sort(s)
#   s.sort!
#   s[0].split('').join('***')
# end

# a = ["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]

# p two_sort(a)


# def in_array(a1, a2)
#   new_array = []
#   a1.each do |entry|
#     a2.each do |word|
#       new_array << entry if word.include? entry
#     end
#   end
#   new_array.uniq.sort
# end

# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# in_array(a1, a2)


# def digital_root(n)
#   return n if n < 10
#   arr = n.digits
#   sum = arr.sum
#   digital_root(sum)
# end


# p digital_root(493193)
# def halving_sum(n)
#   total = n
#   n /= 2
#   total += n
#   halving_sum(n) unless n == 1
#   total + n/2
# end

# p halving_sum(127)


# def int_diff(arr, n)
#   count = 0
#   arr.each do |int|
#     arr.each do |num|
#       count += 1 if int - num == n
#     end
#   end
#   count
# end

# p int_diff([1, 1, 5, 6, 9, 16, 27], 4)

# def spin_words(string)
#   string.split(' ').map! { |word| word.length >= 5 ? word.reverse : word }.join(' ')
# end

# p spin_words("Welcome dude")


# def is_valid_walk(walk)
#   walk.count == 10 && (walk.count('n') - walk.count('s')).zero? && (walk.count('e') - walk.count('w')).zero?
# end

# p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])

# def highest_rank(arr)
#   count = 0
#   append = 0
#   arr.sort.each do |num|
#     if count <= arr.count(num) 
#       count = arr.count(num)
#       append = num
#     else
#       next
#     end
#   end
#   append
# end

# p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12])


# def string_transformer(str)
#   str.swapcase.split(/( )/).reverse.join
# end

# p string_transformer('Example string')


# def int_diff(arr, n)
#   count = 0
#   arr.each_with_index do |int, index1|
#     arr.each_with_index do |num, index2|
#       next if index2 == index1

#       count += 1 if int - num == n
#     end
#   end
#   count
# end

# p int_diff([1, 1, 5, 6, 9, 16, 27], 4)

# def longest(a1, a2)
#   array1 = a1.split('')
#   array2 = a2.split('')
#   array3 = array1.union(array2)
#   array3.flatten.delete_if { |item| item == nil }.sort.uniq.join
# end

# p longest("aretheyhere", "yestheyarehere")
# p longest("inmanylanguages", "theresapairoffunctions")


# def halving_sum(n)
#   total = n
#   while n > 1
#     n /= 2
#     total += n
#   end
#   total
# end


# def multiplication_table(size)
#   increment = 1
#   final_array = []
#   size.times do
#     array = []
#     number = increment
#     size.times do
#       array << number
#       number += increment
#     end
#     final_array << array
#     increment += 1
#   end
#   final_array
# end

# p multiplication_table(4)


# def smallest(n)
#   array = n.digits.reverse
#   index_0 = array.shift
#   smallest_num = array.min
#   lowest_num_index = array.size - array.reverse.index(array.min)
#   lowest_num = array.reverse.min
#   lowest_num_index -= 1 if array[lowest_num_index] == array[(lowest_num_index + 1)]
#   array.delete_at(lowest_num_index - 1)
#   if smallest_num > index_0
#     array.unshift(lowest_num)
#     array.unshift(index_0)
#   else
#     array.unshift(index_0)
#     array.unshift(lowest_num)
#   end
#   placement = smallest_num > index_0 ? 1 : 0
#   small_number = array.join
#   lowest_num_index -= 1 if array.size < n.digits.reverse.size
#   if lowest_num_index == 1
#     final = [small_number.to_i, placement, lowest_num_index]
#   else
#     final = [small_number.to_i, lowest_num_index, placement]
#   end

#   array = n.digits.reverse
#   big_num = array.max
#   big_index = array.index(array.max)
#   array.delete_at(big_index)
#   array.append(big_num)
#   big_number = array.join
#   big_placement = array.size - 1


#   final_big = [big_number.to_i, big_index, big_placement]

#   small_number > big_number ? final_big : final
# end



# I need to find the smallest digit that is not the first digit, I also need to find its index
# I then need to compare the digit and the first digit of the integer to determine which is larger
# I then either need to place the digit into index 0 or index 1 depending on which is larger, moving all digits back one index
# I then need to return the new integer, the index i took the number from, and the index i placed it at.

# Hangups, if the integer has more than one of the same lowest number, I will need to take the number from the last index possible
#          if the method is called on 1000000 then we will have to move the largest number to the end instead of the last index to the front

# maybe I can write both smallest latest index to the front and largest earliest element to the end and compare the two then return whichever is smaller. It will take twice as long though

# methods used
# digits
# insert
# join
# min
# index
# first ?
# shift ?

# p smallest(209917) # [126235, 2, 0]


# def disemvowel(str)
#   str.delete 'aeiouAEIOU'
# end

# p disemvowel("This website is for losers LOL!")

# def high_and_low(numbers)
#   array = numbers.split(' ').map! { |num| num.to_i }
#   puts "#{array.max} #{array.min}"
# end

# high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")

# def XO(str)
#   str.count('xX') == str.count('oO')
# end

# p XO('xxxoo')

# def nb_year(p0, percent, aug, goal)
#   count = 0
#   loop do
#   p0 = p0 + (p0 * percent * 0.01).floor + aug
#   count += 1
#   return count if p0 >= goal
#   end
# end

# p nb_year(1000, 2.0, 50, 1214)


# def expanded_form(num)
#   array = num.digits
#   answer = ''
#   count = array.size - 1
#   answer << "#{array.pop}#{'0' * count}"
#   array.reverse.each do |entry|
#     if entry == 0
#       count -= 1
#       next
#     else
#       count -= 1
#       answer << " + #{entry}#{'0' * count}"
#     end
#   end
#   answer
# end

# p expanded_form(70304)


# def duplicate_encode(word)
#   array = word.upcase.split('')
#   change_to_right = array.select { |letter| array.count(letter) > 1 }.uniq
#   change_to_right.each do |replace|
#     word.gsub!(replace, ')')
#   end
#   p word
#   array = word.upcase.split('')
#   change_to_left = array.reject { |char| char == ')' }#.join
  
#   #word.gsub!(change_to_left, '(')
# end

# p duplicate_encode("dindd")







# shovel <<
test = [1, 2, 3]
test << 0
p test

# .to_h
test = [[1, 'one'], [2, 'two']]
my_hash = test.to_h
p my_hash

# .to_a
array1_10 = (1..10).to_a
p array1_10


# implicit return Every block in ruby will return the value of the last line automatically, so it's common to not use the return keyword in favor of minimal code
# explicit return Using return explicitly can also lead to errors if used inside Procs


# A parameter is a variable in a function definition. It is a placeholder and hence does not have a concrete value. 
# An argument is a value passed during function invocation.
# Parameters are the names assigned to a method's arguments; arguments are the values that get passed to the method.
# Variables are not passed to or returned by methods: values or references are passed.

greeting = 'Hello'

loop do
  greeting = 'Hi'
  break
end

puts greeting

# The local variable greeting is assigned to the String 'Hello' on line 1. The do..end alongside the loop method invocation on lines 3 to 6 defines a block, 
#   within which greeting is reassigned to the String Hi on line 4. The puts method is called on line 8 with the variable greeting passed to it as an argument; 
#   since greeting is now assigned to 'Hi', this is what is output. 
# This example demonstrates local variable scoping rules in Ruby; specifically the fact that a local variable initialized outside of a block is accessible inside the block.

greeting = 'Hello'
# The greeting variable is assigned to the string object 'Hello'.


# We can therefore say that in Ruby, every value apart from false and nil is truthy; we can also say that false and nil are falsy.



# ```ruby
# arr.each do |element|
#   puts element.foo
# end
# ```

# This paragraph talks about the `each` method being
# called by the array referenced by `arr` in the above
# code. It invokes the block for each element, passing
# that element to the block as an argument. Within the
# block, the element is known by the parameter name
# `element`, and the block uses the `puts` method to
# print the value of `element.foo`.