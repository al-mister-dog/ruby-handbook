# Write a method `reduce_while` that takes in an array, a lambda, and an initial
# value, and applies the lambda to the initial value and the first element in
# the array. If the lambda returns true, the method should continue to apply
# the lambda to the previous result and the next element in the array until the
# lambda returns false or there are no more elements in the array. If the lambda
# returns false, the method should return the previous result.

# You may assume that the input array will only contain integers.

# Example:
# reduce_while([1, 2, 3, 4, 5], lambda { |x, y| x + y < 7 }, 0) => 6
# reduce_while([1, 2, 3, 4, 5], lambda { |x, y| x + y < 3 }, 0) => 3

def reduce_while(array, lambda, initial)
    # Your code here
end

def reduce_while(array, lambda, initial)
    array.reduce(initial) do |result, element|
      break result unless lambda.call(result, element)
      result = lambda.call(result, element)
    end
end
  