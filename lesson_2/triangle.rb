def triangle(layers, orientation)
# i should iterate the number of times that is called putting layers - 1 spaces then 1 * then layers - 2 and 2 * incrementing. (This was my pseudocode)
  increment = 1
  layers.times do
    case orientation
    when 'tl'
      puts '*' * (layers - increment) + ' ' * increment
    when 'br'
      puts ' ' * (layers - increment) + '*' * increment
    when 'tr'
      puts ' ' * increment + '*' * (layers - increment)
    when 'bl'
      puts '*' * increment + ' ' * (layers - increment) 
    end 
    increment += 1
  end
end

triangle(4, 'bl')
