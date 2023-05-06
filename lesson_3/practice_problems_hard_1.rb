if false
  greeting = "hello world"
end

greeting # because variable greeting was initialized in an if clause the greeting variable is now set to nil and when this code is ran, nothing happens.


greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => { :a => 'hi there' }


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

p dot_separated_ip_address?('3.15.99')
p dot_separated_ip_address?('3.56.125.255')
p dot_separated_ip_address?('0.0.1.5.99')
