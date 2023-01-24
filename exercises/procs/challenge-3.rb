# Write a method `find_element` that takes in an array and a proc, and returns
# the first element in the array that satisfies the proc. If no element
# satisfies the proc, the method should return nil.

# You may assume that the input array will only contain integers.

# Example:
# find_element([1, 2, 3, 4, 5], Proc.new { |x| x > 3 }) => 4
# find_element([1, 2, 3, 4, 5], Proc.new { |x| x > 5 }) => nil



def find_element(array, proc)
    array.find(&proc)
end
  
find_element([1, 2, 3, 4, 5], Proc.new { |x| x > 3})