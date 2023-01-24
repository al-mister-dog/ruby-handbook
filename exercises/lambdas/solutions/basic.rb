# 1. Define a lambda that takes two arguments and returns their sum
add = ->(a, b) { a + b }

# 2. Call the lambda with the arguments 3 and 4 and assign the result to a variable
result = add.call(3, 4)
puts result  # should print 7

# 3. Define a lambda that takes one argument and returns its square
square = ->(n) { n ** 2 }

# 4. Call the lambda with the argument 5 and assign the result to a variable
result = square.call(5)
puts result  # should print 25

# 5. Define a lambda that takes no arguments and returns the string "Hello, world!"
greeting = -> { "Hello, world!" }

# 6. Call the lambda and assign the result to a variable
result = greeting.call
puts result  # should print "Hello, world!"

# 7. Define a lambda that takes a variable number of arguments and returns their sum
sum = ->(*args) { args.reduce(:+) }

# 8. Call the lambda with the arguments 1, 2, 3, and 4 and assign the result to a variable
result = sum