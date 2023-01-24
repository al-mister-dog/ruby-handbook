# Write a method `double_numbers` that takes in an array of integers and a
# lambda, and returns a new array where each element is the result of the lambda
# applied to the corresponding element in the input array.

# You may assume that the input array will only contain integers.

# Example:
# double_numbers([1, 2, 3], lambda { |x| x * 2 }) => [2, 4, 6]

def double_numbers(numbers, lambda)
    # Your code here
end

def double_numbers(numbers, lambda)
    numbers.map(&lambda)
end
  