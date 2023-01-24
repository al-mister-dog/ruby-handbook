my_hash = Hash.new("There is no key with that name")

puts my_hash["foo"]

new_hash = Hash.new("Key not found")

new_hash[:name] = "Alex"

puts new_hash