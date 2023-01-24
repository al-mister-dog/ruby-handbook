# 1. Define a lambda that takes two arguments and returns their difference
subtract = ->(a, b) { a - b }

# 2. Define a lambda that takes one argument and returns its absolute value
abs = ->(n) { n.abs }

# 3. Define a lambda that takes no arguments and returns a random number between 0 and 1
random = -> { rand }

# 4. Define a lambda that takes a variable number of arguments and returns the average value
average = ->(*args) { args.reduce(:+) / args.length.to_f }

# 5. Use the `partial_application` method to create a new lambda that takes one argument and returns the result of calling the original lambda with that argument and a fixed value
increment = subtract.partial_application.(1)

# 6. Call the new lambda with the argument 5 and assign the result to a variable
result = increment.call(5)
puts result  # should print 4

# 7. Use the `binding` method to get the binding of a lambda
binding = abs.binding

# 8. Use the `eval` method to evaluate a string of code in the context of the lambda's binding
result = binding.eval("n ** 2")
puts result  # should print 4

# 9. Use the `source_location` method to get the file and line number where a lambda was defined
puts abs.source_location  # should print the file and line number where the lambda was defined

# 10. Use the `lambda_procedure` method to convert a lambda to a proc
proc = abs.lambda_procedure
puts proc.class  # should print "Proc"