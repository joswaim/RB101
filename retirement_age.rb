print 'What is your age? '
age = gets.chomp.to_i
print 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_go = retirement_age - age
retirement_year = years_to_go + current_year

puts "It's #{current_year}. You will reture in #{retirement_year}."
puts "You only have #{years_to_go} years of work to go!"
