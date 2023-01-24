# 1. Define a lambda that takes two arguments and returns their product
multiply = ->(a, b) { a * b }

# 2. Define a lambda that takes one argument and returns its square root
square_root = ->(n) { Math.sqrt(n) }

# 3. Define a lambda that takes no arguments and returns the current time
time = -> { Time.now }

# 4. Define a lambda that takes a variable number of arguments and returns the maximum value
max = ->(*args) { args.max }

# 5. Use the `curry` method to create a new lambda that takes one argument and returns the result of calling the original lambda with both arguments set to that value
square = multiply.curry.(2)

# 6. Call the new lambda with the argument 5 and assign the result to a variable
result = square.call(5)
puts result  # should print 25

# 7. Use the `arity` method to get the number of arguments a lambda takes
puts multiply.arity  # should print 2
puts square_root.arity  # should print 1
puts time.arity  # should print 0
puts max.arity  # should print -1

# 8. Use the `parameters` method to get the parameters of a lambda as an array of arrays
puts multiply.parameters  # should print [[:req, :a], [:req, :b]]
puts square_root.parameters  # should print [[:req, :n]]
puts time.parameters  # should print []
puts max.parameters  # should print [[:rest, :args]]

# 9. Use the `call` method to call a lambda with a hash of arguments
result = multiply.call(a: 3, b: 4)
puts result  # should print 12

# 10. Use the `yield_self` method to pass the result of calling a lambda to another lambda
result = square_root.call(5).yield_self { |n| n ** 2 }
puts result