# 1. Define a hash that contains the following keys and values:
# "name" => "Jane"
# "age" => 30
# "location" => "New York"
person = {
    "name" => "Jane",
    "age" => 30,
    "location" => "New York"
}


# 2.  create a new hash with all values converted to strings
person.transform_values! { |v| v.to_s}


# 3. create a new hash with all keys converted to symbols
person.transform_keys! { |k| k.to_sym}
print person

# 4. create a new hash that only includes the specified keys (name, age)
new_hash = person


# 5. create a new hash that excludes the specified keys (location)


# 6. retrieve the keys of the `person` hash as an array


# 7. retrieve the values of the `person` hash as an array


# 8. check if the `person` hash includes the key "name"

  # should print "true"

# 9. check if the `person` hash includes the value "New York"

  # should print "true"

# 10. check if the `person` hash is empty

  # should print "false"