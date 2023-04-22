print 'What is the bill? '
bill = gets.chomp.to_f
print 'What is the tip percentage? '
tip_percent = gets.chomp.to_f

total_tip = (tip_percent * 0.01) * bill
grand_total = bill + total_tip

puts "The tip is $#{format('%.2f', total_tip)}"
puts "The total is $#{format('%.2f', grand_total)}"
