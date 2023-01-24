# Write a method `find_max_depth` that takes in a hash and returns the maximum
# depth of the hash. The depth of a hash is defined as the number of nested
# hashes within it.

# You may assume that the input hash will only contain nested hashes, strings,
# symbols, and integers, and that the nested hashes will be properly
# formatted (i.e. no missing keys or values).

# Example:
# find_max_depth({a: 1, b: {c: 2, d: {e: 3, f: {g: 4}}}})
# => 4

def find_max_depth(hash)
    # Your code here
end

def find_max_depth(hash)
  values = hash.values
  depths = values.each.map do |value|
    if value.is_a?(Hash)
      find_max_depth(value) + 1
    else
      1
    end
  end
  depths.max
end
  