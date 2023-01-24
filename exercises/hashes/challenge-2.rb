# Write a method `combine_hashes` that takes in two hashes and returns a new
# hash where the keys and values from both input hashes are combined. If a key
# is present in both input hashes, the value in the returned hash should be the
# result of the block applied to the corresponding values in the input hashes.

# You may assume that the input hashes have the same set of keys.

# Example:
# combine_hashes({a: 1, b: 2}, {a: 3, b: 4}) { |x, y| x + y }
# => {a: 4, b: 6}

def combine_hashes(hash1, hash2)
end

puts combine_hashes({a: 1, b: 2}, {a: 3, b: 4}) { |x, y| x + y }