# The curry method in Ruby is a way to create a new version of a method 
# with a fixed number of arguments. This can be useful if you want to use 
# a method in a context where you don't know all of the arguments 
# upfront, or if you want to create a new method that is a more specialized 
# version of an existing method.

# Here is an example of how to use the curry method:

# Define a method that takes two arguments
def add(x, y)
  x + y
end

# Create a new method that is a curried version of `add`
add_three = add.curry.(3)

# Call the new method with a single argument
puts add_three.(4)  # Outputs: 7


# In this example, the add method takes two arguments and returns their sum. 
# The add_three method is a curried version of add that takes a single argument 
# and always adds 3 to it. When you call add_three.(4), it returns 7 (3 + 4).

# The curry method is defined on the Proc class, which means that you can use it 
# on any object that is a Proc. This includes lambda functions and blocks, 
# as well as regular methods.



# Lambda functions and blocks are examples of Proc objects in Ruby.

# A Proc object is a block of code that has been turned into an object, 
# which can be stored in a variable, passed to a method, or returned from a method. 
# A Proc object can be called like a method, by using the call method or the .() operator.

# Here is an example of a block being turned into a Proc object:
# Define a block
add = proc { |x, y| x + y }

# Call the block like a method
puts add.call(3, 4)  # Outputs: 7

# Here is an example of a lambda function, which is a special kind of Proc object:

# Define a lambda function
add = ->(x, y) { x + y }

# Call the lambda function like a method
puts add.call(3, 4)  # Outputs: 7

# In both cases, the block of code is turned into a Proc object and stored in the add variable. 
# It can then be called like a method using the call method or the .() operator.


# Lambdas and procs are both types of Proc objects in Ruby, and they can be used to store blocks 
# of code that can be called like methods. However, there are some key differences between the two:

# Syntax: Lambdas are defined using the -> operator, while procs are defined using the proc keyword.
# Arguments: Lambdas have a stricter interpretation of arguments than procs. If you pass the wrong 
# number of arguments to a lambda, it will raise an error, while a proc will ignore extra arguments 
# and assign nil to missing arguments.
# return behavior: The return keyword behaves differently in lambdas and procs. In a lambda, return
# will exit the lambda and return control to the calling method, while in a proc, return will exit 
# the calling method and return control to the caller of the method that defined the proc.
# Here is an example that illustrates some of these differences:

# Define a lambda and a proc
add = ->(x, y) { x + y }
add_proc = proc { |x, y| x + y }

# Call the lambda and proc with the wrong number of arguments
puts add.call(3)      # Raises an error
puts add_proc.call(3) # Outputs: nil

# Define a method that calls the lambda and proc
def test
  add = ->(x, y) { x + y }
  add_proc = proc { |x, y| x + y }

  puts add.call(3)
  return "Hello"
  puts add_proc.call(3)
end

# Call the method
puts test  # Outputs: "Hello"


# In this example, the lambda add raises an error when you try to call it with the wrong 
# number of arguments, while the proc add_proc ignores the missing argument and returns nil. 
# The return keyword also behaves differently in the lambda and proc: in the lambda, it exits 
# the lambda and returns control to the test method, while in the proc, it exits the test
#  method and returns control to the caller of test.

# In general, lambdas are used when you want to store a block of code that should behave like 
# a regular method, with strict argument checking and normal return behavior. Procs are more 
# flexible and are often used when you want to create a block of code that will be passed to 
# another method and executed in a different context.



# Here is an example of how you might use the curry method to create a new version of a method that 
# takes a fixed number of arguments:

Copy code
# Define a method that takes two arguments
def add(x, y)
  x + y
end

# Create a new method that is a curried version of `add`
add_three = add.curry.(3)

# Use the new method in a context where you don't know the second argument upfront
def compute(x, adder)
  result = adder.call(x)
  puts "Result: #{result}"
end

compute(4, add_three)  # Outputs: "Result: 7"
compute(5, add_three)  # Outputs: "Result: 8"
# In this example, the compute method takes two arguments: a value x and a proc adder. 
# The adder proc is expected to take a single argument and return the result of some computation. 
# The compute method calls the adder proc with x and prints the result.

# To create the add_three method, we use the curry method on the add method to create a new proc 
# that always adds 3 to its argument. We can then pass this proc to the compute method as the adder 
# argument, and it will work as expected.

# This is just one example of how the curry method can be useful. 
# You might also use it to create specialized versions of a method that are easier to use in 
# certain contexts, or to create reusable blocks of code that can be passed to other methods.