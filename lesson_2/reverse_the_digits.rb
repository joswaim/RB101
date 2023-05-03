def reversed_number(number)
  puts number.to_s.reverse.to_i
end

# I mean this way converts it to a string which can call the reverse function, then we convert back to an integer which 
# if we printed the statements below would return true.

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
