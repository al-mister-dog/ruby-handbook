# 1. Define an array of strings called `words`
words = ["apple", "banana", "cherry"]

# 2. Use the `bsearch` method to find the index of the string "banana" in the array
index = words.bsearch { |w| w == "banana" }
puts index  # should print 1

# 3. Use the `bsearch_index` method to find the index of the string "date" in the array
# If the element is not found, return the index where it would be inserted
index = words.bsearch_index { |w| w >= "date" }
puts index  # should print 3

# 4. Use the `chunk` method to group the elements of the array into subarrays based on a condition
groups = words.chunk { |w| w.length }.to_a
puts groups.inspect  # should print [["apple", [["banana"], ["cherry"]]]]

# 5. Use the `combination` method to generate all possible combinations of two elements from the array
combinations = words.combination(2).to_a
puts combinations.inspect  # should print [["apple", "banana"], ["apple", "cherry"], ["banana", "cherry"]]