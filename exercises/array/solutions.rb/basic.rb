# 1. Define an array of strings called `words`
words = ["apple", "banana", "cherry"]

# 2. Access and print the second element of the array
puts words[1]  # should print "banana"

# 3. Append the string "date" to the array
words << "date"

# 4. Insert the string "elderberry" at the beginning of the array
words.insert(0, "elderberry")

# 5. Remove and return the last element of the array
last = words.pop
puts last  # should print "date"

# 6. Iterate over the array and print each element
words.each do |word|
  puts word
end

# 7. Reverse the order of the elements in the array
words.reverse!

# 8. Check if the array includes the string "cherry"
if words.include?("cherry")
  puts "The array includes 'cherry'"
else
  puts "The array does not include 'cherry'"
end

# 9. Get the length of the array
length = words.length
puts length  # should print 3