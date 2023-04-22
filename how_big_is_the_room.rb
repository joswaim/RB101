SQR_FT_TO_INCHES = 144
SQR_FT_TO_CENTIMETER = 929.03

print 'Enter the length of the room in feet: '
length = gets.chomp.to_f
print 'Enter the width of the room in feet: '
width = gets.chomp.to_f
area_feet = length * width
area_inches = area_feet * SQR_FT_TO_INCHES
area_centimeter = area_feet * SQR_FT_TO_CENTIMETER

puts "The area of the room is #{area_feet.round} square feet which is equivalent to #{area_inches.round} square inches or #{area_centimeter.round} square centimeters."
