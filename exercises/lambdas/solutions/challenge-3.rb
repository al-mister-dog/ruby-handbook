# Write a method `find_element` that takes in an array and a lambda, and returns
# the first element in the array that satisfies the lambda. If no element
# satisfies the lambda, the method should return nil.

# You may assume that the input array will only contain integers.

# Example:
# find_element([1, 2, 3, 4, 5], lambda { |x| x > 3 }) => 4
# find_element([1, 2, 3, 4, 5], lambda { |x| x > 5 }) => nil

def find_element(array, lambda)
    # Your code here
end

def find_element(array, lambda)
    array.find(&lambda)
end
  