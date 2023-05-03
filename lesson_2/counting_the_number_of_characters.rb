def number?(words)
  spaces = words.count(' ')
  all_chars = words.length
  all_chars - spaces
end

print 'Please write a word or multiple words: '
words_input = gets.chomp

number_of_characters = number?(words_input)

puts "There are #{number_of_characters} characters in \"#{words_input}\""
