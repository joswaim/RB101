a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Object IDs are the actual name of the place in memory that the variable points to.
# In the first section, all strings are considered different, but we can see that the variable c is set to = the variable a.
# Because they were set to the same thing they both refer to the same place in memory.
# The second section where a b and c are being set to the integer 42, they all return the same object_id
# The reason for this is because integers are imutable in ruby, there will only ever be one integer 42 so it has a specific id and that wont be changed.
# true, false, and nil are also all handled similarly. They all refer to their own individual places in memory.


# MULTIPLE ASSIGNMENT

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  [a_string_param, an_array_param]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  color == "blue" || color == "green"
end