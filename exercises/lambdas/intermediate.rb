# 1. Define a lambda that takes two arguments and returns their product

# 2. Define a lambda that takes one argument and returns its square root

# 3. Define a lambda that takes no arguments and returns the current time

# 4. Define a lambda that takes a variable number of arguments and returns the maximum value

# 5. Use the `curry` method to create a new lambda that takes one argument and 
# returns the result of calling the first lambda (above) with both arguments set to that value


# 6. Call the new lambda with the argument 5 and assign the result to a variable

# puts result
  # should print 25

# 7. Use the `arity` method to get the number of arguments a lambda takes


# 8. Use the `parameters` method to get the parameters of a lambda as an array of arrays
  # should print [[:req, :a], [:req, :b]]
  # should print [[:req, :n]]
  # should print []
  # should print [[:rest, :args]]

# 9. Use the `call` method to call a lambda with a hash of arguments
  # should print 12

# 10. Use the `yield_self` method to pass the result of calling a lambda to another lambda
square_root = ->(a) {Math.sqrt(a)}
result = square_root.call(5).yield_self { |n| n + 2 }
puts result
