indent = 0
10.times do
  puts "#{' '*indent}The Flintstones Rock!"
  indent += 1
end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"


def factors_original(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors_original(10)

# number % divisor == 0  in the above is an argument for adding the factor to the array factors with the shovel (<<) operator
# if number modulo the divisor is 0 then it is a factor of the number so the shovel adds it to the list of factors this
# is a funny line of code because it actually adds the inverse each time and is why the array counts up and we dont have to reorder it.

# the second to last line is important because the method will not return the array factors unless we add it as the last line
# we always must decide should our method do something (like puts or cause a mutable object to change)
# or should we have out method return something (like in the case here where it returns the array of factors)

def factors(number)
  divisor = number
  factors = []
  number.times do
    factors << number / divisor if (number % divisor).zero?
    divisor -= 1
  end
  # the below block is what was in the solution section but I like my way better, I mean they both work equally and neither error out.
  # while divisor > 0
  #   factors << number / divisor if number % divisor == 0
  #   divisor -= 1
  # end
  factors
end

p factors(22)


limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"


answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
p new_answer - 8


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
p munsters

# Remember that in Ruby, what gets passed to a method isn't the value of the object. Under the hood, Ruby passes the
# object_id of each argument to the method. The method stores these object_id's internally in locally scoped
# (private to the method) variables (named per the method definition's parameter list).

# So Spot's demo_hash is pointing to the munsters hash. In this case, the program does not create a new hash for the
# result -- it just uses the existing hash as-is. So the actual hash object that is being messed with inside of the
# method IS the munsters hash.
