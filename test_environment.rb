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