# def center_of(string)
#   length = string.length
#   odd_middle = (length / 2)
#   even_middle = odd_middle - 1
#   center = string[odd_middle] if length.odd?
#   center = string[even_middle..odd_middle] unless length.odd?
#   center
# end



def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'