# 1. Define a hash that contains the following keys and values:
# "name" => "Jane"
# "age" => 30
# "location" => "New York"

person = { "name" => "Jane", "age" => 30, "location" => "New York" }

# 2. Access and print the value for the key "name"
puts person["name"]

# 3. Add a new key/value pair to the hash: "favorite_color" => "blue"
person["favorite_color"] = "blue"

# 4. Update the value for the key "age" to 35
person["age"] = 35

# 5. Iterate over the hash and print each key/value pair
person.each do |key, value|
  puts "#{key}: #{value}"
end

# 6. Remove the key/value pair for "location"
person.delete("location")

# 7. Check if the hash includes the key "location" and print the result
if person.key?("location")
  puts "The hash includes the key 'location'"
else
  puts "The hash does not include the key 'location'"
end