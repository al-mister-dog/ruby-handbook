# 1. Define a hash that contains the following keys and values:
# "name" => "Jane"
# "age" => 30
# "location" => "New York"
person = {
    name: "Jane",
    age: 30,
    location: "New York"
}

# 2. Convert the hash to an array of arrays containing the key/value pairs, and assign the result to a variable called `pairs`
pairs = person.to_a

# 3. Convert the `pairs` array back into a hash and assign the result to a variable called `reconstructed`
reconstructed = pairs.to_h


# 4. Verify that `reconstructed` is equivalent to the original `person` hash by using the `eql?` method
print reconstructed.eql?(person)
# should print "true"

# 5. Merge the following hash into the `person` hash:
# "favorite_color" => "blue"
# "favorite_food" => "pizza"
person.merge({favorite_color: "blue", favorite_food: "pizza"})


# 6. Use the `select` method to create a new hash that only includes key/value pairs where the value is a string
string_hash = person.select { |k,v| v.is_a?(String)}

# 7. create a new hash that swaps the keys and values of the original hash
inverted = person.invert

# 8. Use the `default` method to set a default value for the `person` hash
person.default = "unknown"

# 9. Use the `fetch` method to retrieve the value for the key "name" from the `person` hash
# should print "Jane"
puts person.fetch(:name)
# 10. Use the `fetch` method to retrieve the value for a non-existent key from the `person` hash


# should print "unknown"


