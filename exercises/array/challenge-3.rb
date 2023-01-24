# Write a method `pairwise_difference` that takes in an array of integers and
# returns an array of the differences between each pair of consecutive elements.

# You may assume that the input array will have at least two elements.

# Example:
# pairwise_difference([1, 3, 5, 7]) => [2, 2, 2]



def pairwise_difference(numbers)
   numbers.each_cons(2) {|x,y| x > y ? x - y : y - x}
end

print pairwise_difference([1, 3, 5, 7])