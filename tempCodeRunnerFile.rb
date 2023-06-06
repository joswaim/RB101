def comp(array1, array2)
  array1.count.times do |num|
    return false if (array1.sort[num]**2) != array2.sort[num]
    return false if array1.sort[num].nil?
    return false if array1.sort[num.zero?]
  end
  return false if array1.count.zero?

  true
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
