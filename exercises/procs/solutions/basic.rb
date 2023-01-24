# 1. Define a proc that takes two arguments and returns their sum
add = Proc.new { |a, b| a + b }

# 2. Call the proc with the arguments 3 and 4 and assign the result to a variable
result = add.call(3, 4)
puts result  # should print 7

# 3. Define a proc that takes one argument and returns its square
square = Proc.new { |n| n ** 2 }

# 4. Call the proc with the argument 5 and assign the result to a variable
result = square.call(5)
puts result  # should print 25

# 5. Define a proc that takes no arguments and returns the string "Hello, world!"
greeting = Proc.new { "Hello, world!" }

# 6. Call the proc and assign the result to a variable
result = greeting.call
puts result  # should print "Hello, world!"

# 7. Define a proc that takes a variable number of arguments and returns their sum
sum = Proc.new { |*args| args.reduce(:+) }

# 8. Call the proc with the arguments 1, 2, 3, and 4 and assign the result to a variable
result = sum.call(1, 2, 3, 4)
puts result  # should print 10

# 9. Use the `arity` method to get the number of arguments a proc takes
puts add.arity  # should print 2
puts square.arity  # should print 1
puts greeting.arity  # should print 0
puts sum.arity  # should print -1

# 10. Use the `parameters` method to get the parameters of a proc as an array of arrays
puts add.parameters  # should print [[:req