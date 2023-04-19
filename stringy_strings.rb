def stringy(number, starting = 1)
  count = 1
  answer = String.new
  loop do
    if starting == 1
      count.odd? ? answer << '1' : answer << '0'
    else
      count.odd? ? answer << '0' : answer << '1'
    end
    count += 1
    break if count > number
  end
  answer
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
