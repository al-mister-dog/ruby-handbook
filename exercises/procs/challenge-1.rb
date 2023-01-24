# Write a method `double_numbers` that takes in an array of integers and a
# proc, and returns a new array where each element is the result of the proc
# applied to the corresponding element in the input array.

# You may assume that the input array will only contain integers.

# Example:
# double_numbers([1, 2, 3], Proc.new {...}

def double_numbers(numbers, proc)
    numbers.map(&proc)
end

print double_numbers([1, 2, 3], Proc.new {|n| n * 2})