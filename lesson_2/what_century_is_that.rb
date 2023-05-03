def ordinalize(number)
  array = number.to_s.split(//)
  answer = "#{number}th" if array[-2].to_i == 1
  if array[-2].to_i != 1
    case array[-1].to_i
    when 1
      answer = "#{number}st"
    when 2
      answer = "#{number}nd"
    when 3
      answer = "#{number}rd"
    else
      answer = "#{number}th"
    end
  end
  answer
end

def century(year)
  century = 0
  loop do
    year -= 100
    century += 1
    break if year <= 0
  end
  ordinalize(century)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
