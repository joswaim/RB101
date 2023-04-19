def print_in_box(text)
  puts '+-' + ('-' * text.length) + '-+'
  puts '| ' + (' ' * text.length) + ' |'
  puts '| ' +        text         + ' |'
  puts '| ' + (' ' * text.length) + ' |'
  puts '+-' + ('-' * text.length) + '-+'
end

# Further Exploration
# Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window 
# (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so 
# they appear on multiple lines, but still within a box.

# 76 chars max in a line then, with the side columns and the spaces.
# I thought and thought but there was no way I was going to break a piece of text that was over 160 characters into maximum 76 character strings while also not breaking any words.
# I found some regex that would be able to do it, but I really don't understand it yet and I will wait for my chapters on it before continuing.

print_in_box('Hello Launch School')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+