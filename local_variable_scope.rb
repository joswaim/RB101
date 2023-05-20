a = 'Hello'
b = a
a = 'Goodbye'

puts a
puts b

# this code would return nil because the final line of code calls the method puts,
# puts will print the string that is referenced in its argument and then return nil

# this code will output 'Goodbye' on one line and then 'Hello' on the next line
# the reason is because on line 3 a is assigned to the string object containing 'Goodbye'
# on line 1 a is assigned to the string object containing 'Hello'
# and then on line 2 b is assigned to the same objectid as a


# What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4

loop do
  a = 5
  b = 3

  break # returns nil or the provided argument, in this case nil
end

puts a
puts b

# the break inside the block would return nil because it isn't supplied with an argument to return.
# the final puts statement will return nil if it were in a loop for example, because
# puts is a method that when called will print the string object that is supplied as the argument, then it returns nil
# the code will output 5 and then 3, because local variables inside block are in the main scope.


# What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

# the break inside this block would return nil unless it were supplied with an argument, in this case it returns nil
# line 48 would print 3 and then line 49 would print 2. as we can see c is initialized and assigned to the object #3
# on line 43, then the variable a is assigned to the same object as varibale c is on line 44.


def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

# local variable scope inside methods
# methods are their own scope, completely separate from any other scope.
# certain mutable objects can be mutated by methods however we have been told through study that you must experiment
# to find out which ones will mutate the caller and which wont.
# sometimes you can determine if the method will mutate the caller by the inclusion of the ! bang symbol.
# this code returns nil because it ends in a break that does not have an argument that returns anything.
# this code defines a method titled example, that takes 1 argument
# in the code it is noted that the object is a string however it could be any object that the puts method will work on
# the code initializes a variable i on line 57 that is set to the integer 3
# the code then begins a loop on line 58 and proceeds to do two things, 
# it calls the method puts on the single argument passed to example by calling the variable str,
# then on line 60 it increments the variable i down by 1 for each loop.
# the guard clause is on line 61 which will break out of the loop and complete the method when the variable i reaches 0
