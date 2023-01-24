# 1. Define a proc that takes two arguments and returns their difference
subtract = Proc.new { |a, b| a - b }

# 2. Define a proc that takes one argument and returns its absolute value
abs = Proc.new { |n| n.abs }

# 3. Define a proc that takes no arguments and returns a random number between 0 and 1
random = Proc.new { rand }

# 4. Define a proc that takes a variable number of arguments and returns the average value
average = Proc.new { |*args| args.reduce(:+) / args.length.to_f }

# 5. Use the `partial_application` method to create a new proc that takes one argument and returns the result of calling the original proc with that argument and a fixed value
increment = subtract.partial_application.(1)

# 6. Call the new proc with the argument 5 and assign the result to a variable
result = increment.call(5)
puts result  # should print 4

# 7. Use the `call` method to call a proc with a hash of arguments
result = multiply.call(a: 3, b: 4)
puts result  # should print 12

# 8. Use the `yield_self` method to pass the result of calling a proc to another proc
result = square_root.yield_self { |n| n ** 2 }
puts result  # should print 2

# 9. Use the `to_lambda` method to convert a proc to a lambda
lambda = abs.to_lambda
puts lambda.class  # should print "Proc"

# 10. Use the `to_proc` method to convert an object to a proc
array = [1, 2, 3, 4]
result = array.map(&:to_s)
puts result  # should print ["1", "2", "3", "4"]