age = rand(20..200)
puts "What's your stuffed animal's name?"
name = gets.chomp
name = 'Teddy' if name == ''
puts "#{name} is #{age} years old!"
