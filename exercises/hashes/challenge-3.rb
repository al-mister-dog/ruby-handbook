# Write a method `group_by_key` that takes in a hash and a block, and returns a
# new hash where the keys are the return values of the block applied to the
# corresponding values in the input hash, and the values are arrays of the
# original keys.

# You may assume that the input hash has unique values.

# Example:
# group_by_key({a: 1, b: 2, c: 3}) { |x| x % 2 }
# => {1=>[:a, :c], 0=>[:b]}

def group_by_key(hash)
  keys = hash.keys
  grouped = keys.each_with_object({}) do |key, obj|
    key_group = yield(hash[key])
    obj[key_group] ||= []
    obj[key_group] << key
  end

end

print group_by_key({a:1, b:2, c:3}) { |x| x % 2 }