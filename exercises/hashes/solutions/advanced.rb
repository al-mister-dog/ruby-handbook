# 1. Define a hash that contains the following keys and values:
# "name" => "Jane"
# "age" => 30
# "location" => "New York"

person = { "name" => "Jane", "age" => 30, "location" => "New York" }

# 2. Use the `transform_values` method to create a new hash with all values converted to strings
string_values = person.transform_values(&:to_s)

# 3. Use the `transform_keys` method to create a new hash with all keys converted to symbols
symbol_keys = person.transform_keys(&:to_sym)

# 4. Use the `slice` method to create a new hash that only includes the specified keys
selected_keys = person.slice("name", "age")

# 5. Use the `except` method to create a new hash that excludes the specified keys
excluded_keys = person.except("location")

# 6. Use the `keys` method to retrieve the keys of the `person` hash as an array
keys = person.keys

# 7. Use the `values` method to retrieve the values of the `person` hash as an array
values = person.values

# 8. Use the `has_key?` method to check if the `person` hash includes the key "name"
has_name = person.has_key?("name")
puts has_name  # should print "true"

# 9. Use the `has_value?` method to check if the `person` hash includes the value "New York"
has_location = person.has_value?("New York")
puts has_location  # should print "true"

# 10. Use the `empty?` method to check if the `person` hash is empty
is_empty = person.empty?
puts is_empty  # should print "false"