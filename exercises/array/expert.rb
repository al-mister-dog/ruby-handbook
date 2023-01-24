# 1. Define an array of strings called `words`
words = ["apple", "banana", "cherry"]

# 2. Use the `product` method to generate the Cartesian product of the array with itself
# The result should be a new array of all possible pairs of elements from the original array
pairs = words.product(words)
puts pairs.inspect  # should print [["apple", "apple"], ["apple", "banana"], ["apple", "cherry"], ["banana", "apple"], ["banana", "banana"], ["banana", "cherry"], ["cherry", "apple"], ["cherry", "banana"], ["cherry", "cherry"]]

# 3. Use the `repeated_combination` method to generate all possible combinations of two elements from the array, allowing repeated elements
combinations = words.repeated_combination(2).to_a
puts combinations.inspect  # should print [["apple", "apple"], ["apple", "banana"], ["apple", "cherry"], ["banana", "banana"], ["banana", "cherry"], ["cherry", "cherry"]]

# 4. Use the `repeated_permutation` method to generate all possible permutations of two elements from the array, allowing repeated elements
permutations = words.repeated_permutation(2).to_a
puts permutations.inspect  # should print [["apple", "apple"], ["apple", "banana"], ["apple", "cherry"], ["banana", "apple"], ["banana", "banana"], ["banana", "cherry"], ["cherry", "apple"], ["cherry", "banana]

