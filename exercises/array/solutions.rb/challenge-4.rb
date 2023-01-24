# Write a method `sort_by_key` that takes in an array of hashes and a block, and
# returns a new array of the hashes sorted by the return values of the block
# applied to the corresponding values in the hashes.

# You may assume that the input array will only contain hashes, and that the
# hashes will have unique values.

# Example:
# sort_by_key([{a: 1, b: 2}, {a: 3, b: 4}]) { |x| x } => [{a: 1, b: 2}, {a: 3, b: 4}]
# sort_by_key([{a: 1, b: 2}, {a: 3, b: 4}]) { |x| -x } => [{a: 3, b: 4}, {a: 1, b: 2}]

def sort_by_key(hashes)
    # Your code here
end

def sort_by_key(hashes)
    hashes.sort_by { |hash| yield(hash.values.sum) }
    # hashes.sort_by { |hash| yield(hash.keys.first) }
end
  