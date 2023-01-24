nums = [1, 2, 3, 4, 5]

puts nums.size
puts nums.length

arr = Array.new(10)
puts arr.length # 10
puts arr.size # 0

# for all intents and purposes length and size are interchangeable
# The Array.new(10) method creates an array with 10 elements, but those elements are all nil by default. 
# Therefore, the output will be 10 for arr.length, and 0 for arr.size, since the array is empty.

# It is possible that arr.size is being overridden by a different method, such as length, 
# in the text editor. To be sure, you can use the inspect method to check the values of the array:

puts arr.inspect # [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
