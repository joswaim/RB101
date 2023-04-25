searched_array = []
5.times do |num|
  keys = { 0 => '1st', 1 => '2nd', 2 => '3rd', 3 => '4th', 4 => '5th' }
  print "==> Enter the #{keys[num]} number: "
  searched_array.append(gets.chomp.to_i)
end

print '==> Enter the last number: '
final_number = gets.chomp.to_i
is_included = "The number #{final_number} appears in #{searched_array}"
is_not_included = "The number #{final_number} doesn't appear in #{searched_array}"
puts searched_array.include?(final_number) ? is_included : is_not_included
