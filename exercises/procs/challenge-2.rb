# Write a method `map_with_index` that takes in an array and a proc, and returns
# a new array where each element is the result of the proc applied to the
# corresponding element and its index in the input array.

# You may assume that the input array will only contain integers.

# Example:
# map_with_index([1, 2, 3], Proc.new { ... }) => [0, 2, 6]

def map_with_index(array, proc)
    array.each_with_index.map(&proc)
end

print map_with_index([1, 2, 3], Proc.new {|x,y| x * y })