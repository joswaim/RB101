advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
p advice

advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!(/important/, 'urgent')
p advice

advice = "Few things in life are as important as house training your pet dinosaur."
advice_array = advice.split
advice_array[6] = 'urgent'
advice = advice_array.join(' ')
p advice

p (10..100).include?(42)

famous_words = "seven years ago..."
puts 'Four score and ' + famous_words
puts 'Four score and ' << famous_words
famous_words.prepend('Four score and ')
puts famous_words

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
p flintstones

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc('Barney')

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.select { |_, value| value == 2 }.flatten
