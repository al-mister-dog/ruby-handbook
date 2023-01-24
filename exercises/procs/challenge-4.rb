# Write a method `reduce_while` that takes in an array, a proc, and an initial
# value, and applies the proc to the initial value and the first element in the
# array. If the proc returns true, the method should continue to apply the proc
# to the previous result and the next element in the array until the proc
# returns false or there are no more elements in the array. If the proc returns
# false, the method should return the previous result.

# You may assume that the input array will only contain integers.

# Example:
# reduce_while([1, 2, 3, 4, 5], Proc.new { |x, y| x + y < 7 }, 0) => 6
# reduce_while([1, 2, 3, 4, 5], Proc.new { |x, y| x + y < 3 }, 0) => 3


def reduce_while(array, proc, initial)
  array.reduce(initial) do |result, element|
    break result unless proc.call(result, element)
    result = proc.call(result, element)
  end
end
  
reduce_while([1, 2, 3, 4, 5], Proc.new { |x, y| x + y < 7 }, 0) 