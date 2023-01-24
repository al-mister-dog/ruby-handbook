# The sort_by method in Ruby is used to sort an enumerable object, such as an array, 
# by a specific criterion.

# Here is an example of how to use the sort_by method:
arr = [3, 2, 1]
sorted_arr = arr.sort_by { |x| x }
# => [1, 2, 3]

# The sort_by method takes a block with a criterion for sorting the elements of the enumerable object. 
# In the example above, the block { |x| x } returns the element itself for each element in the array, 
# so the array is sorted in ascending order of the elements.

# You can also pass a block that returns a complex criterion for sorting the elements. For example:
arr = [["cat", 3], ["dog", 1], ["bird", 2]]
sorted_arr = arr.sort_by { |x| x[1] }
# => [["dog", 1], ["bird", 2], ["cat", 3]]

# In this example, the block { |x| x[1] } returns the second element of each subarray, so the array is 
# sorted in ascending order of the second element of each subarray.
# The sort_by method returns an array with the elements sorted according to the criterion specified in 
# the block.

# You can also pass a block to the sort_by method that compares elements in a different way, such as in 
# descending order or using a custom comparison. For example:
arr = [3, 2, 1]
sorted_arr = arr.sort_by { |x| -x }
# => [3, 2, 1]

# This will sort the elements in descending order.