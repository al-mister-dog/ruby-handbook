# 1. Define an array of integers called `numbers`
numbers = [5, 2, 7, 1, 3]

# 2. Use the `sort` method to sort the array in ascending order
numbers.sort!

# 3. Use the `select` method to create a new array that only includes even numbers
evens = numbers.select { |n| n.even? }

# 4. Use the `reject` method to create a new array that excludes even numbers
odds = numbers.reject { |n| n.even? }

# 5. Use the `uniq` method to create a new array with duplicate elements removed
unique = numbers.uniq

# 6. Use the `join` method to convert the array to a string with the elements separated by a comma
string = numbers.join(", ")
puts string  # should print "5, 2, 7, 1, 3"

# 7. Use the `sample` method to choose a random element from the array
random = numbers.sample
puts random  # should print a random element from the array

# 8. Use the `shuffle` method to shuffle the elements of the array in a random order
numbers.shuffle!

# 9. Use the `cycle` method to iterate over the elements of the array indefinitely
numbers.cycle do |n|
  puts n
  break if n == 1  # stop after the first element
end

# 10. Use the `zip` method to create a new array by combining elements from two arrays
a = [1, 2, 3]
b = ["a", "b", "c"]
zipped = a.zip(b)