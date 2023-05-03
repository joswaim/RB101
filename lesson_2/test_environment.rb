# def string_lengths(sentence)
#   strings = sentence.split

#   strings.map { |chars| chars.length }
# end


# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []

#   strings.each do |string|
#     lengths << string.size
#   end
#   # return lengths -> this would fix this code, it returns strings
# end


# def string_lengths(sentence)
#   words = sentence.split
#   word_lengths = []
#   counter = 0

#   while counter < words.size do
#     word_lengths << words[counter].length
#     counter += 1
#   end

#   word_lengths
# end


# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []
#   counter = 1

#   until counter == strings.size do
#     word_length = strings[counter - 1].length
#     lengths.push(word_length)
#     counter += 1
#   end

#   lengths
# end


# p string_lengths('to be or not to be')


# s = 'abc'
# puts s.public_methods(false).inspect


# a = [5, 9, 3, 11]
# puts a.min(2)

# def ordinalize(number)
#   array = number.to_s.split(//)
#   answer = "#{number}th" if array[-2].to_i == 1
#   if array[-2].to_i != 1
#     case array[-1].to_i
#     when 1
#       answer = "#{number}st"
#     when 2
#       answer = "#{number}nd"
#     when 3
#       answer = "#{number}rd"
#     else
#       answer = "#{number}th"
#     end
#   end
#   answer
# end

# p ordinalize(12)


# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# p century(12811)


# a = [1, 2, 3, 3]
# b = a
# c = a.uniq

# p a
# p b
# p c


# response = gets.chomp
# p response


a = 4
p !!a