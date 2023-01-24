# Write a method `flatten` that takes in an array of nested arrays and returns a
# new flat array with all the elements from the nested arrays.

# You may assume that the input array will only contain nested arrays and integers.

# Example:
# flatten([1, [2, 3], [4, [5, 6]], [[[7]], 8]]) => [1, 2, 3, 4, 5, 6, 7, 8]

def flatten(array)
    # Your code here
end

def flatten(array)
  array.flat_map do |element|
    if element.is_a?(Array)
      flatten(element)
    else
      element
    end
  end
end
  
  