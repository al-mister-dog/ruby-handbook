# Write a method `map_with_index` that takes in an array and a lambda, and
# returns a new array where each element is the result of the lambda applied to
# the corresponding element and its index in the input array.

# You may assume that the input array will only contain integers.

# Example:
# map_with_index([1, 2, 3], lambda { |x, i| x * i }) => [0, 2, 6]

def map_with_index(array, lambda)
    # Your code here
end

def map_with_index(array, lambda)
    array.each_with_index.map(&lambda)
end
  
  