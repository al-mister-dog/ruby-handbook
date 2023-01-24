# 1. Define a proc that takes two arguments and returns their product
multiply = Proc.new { |a, b| a * b }

# 2. Define a proc that takes one argument and returns its square root
square_root = Proc.new { |n| Math.sqrt(n) }

# 3. Define a proc that takes no arguments and returns the current time
time = Proc.new { Time.now }

# 4. Define a proc that takes a variable number of arguments and returns the maximum value
max = Proc.new { |*args| args.max }

# 5. Use the `curry` method to create a new proc that takes one argument and returns the result of calling the original proc with both arguments set to that value
square = multiply.curry.(2)

# 6. Call the new proc with the argument 5 and assign the result to a variable
result = square.call(5)
puts result  # should print 25

# 7. Use the `lambda?` method to check if a proc is a lambda
puts add.lambda?  # should print "false"
puts greeting.lambda?  # should print "false"
puts sum.lambda?  # should print "false"

# 8. Use the `binding` method to get the binding of a proc
binding = abs.binding

# 9. Use the `eval` method to evaluate a string of code in the context of the proc's binding
result = binding.eval("n ** 2")
puts result  # should print 4

# 10. Use the `source_location` method to get the file and line number where a proc was defined
puts add.source_location  # should print the file and line number where the proc was defined