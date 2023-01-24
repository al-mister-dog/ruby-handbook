# Write a method `group_by_key` that takes in a hash and a block, and returns a
# new hash where the keys are the return values of the block applied to the
# corresponding values in the input hash, and the values are arrays of the
# original keys.

# You may assume that the input hash has unique values.

# Example:
# group_by_key({a: 1, b: 2, c: 3}) { |x| x % 2 }
# => {1=>[:a], 0=>[:b, :c]}

def group_by_key(hash)
    # Your code here
end
  
def group_by_key(hash)
    keys = hash.keys
    grouped = keys.each_with_object({}) do |key, result|
      value = hash.fetch(key)
      key_group = yield(value)
      result[key_group] ||= []
      result[key_group] << key
    end
    grouped
end
  