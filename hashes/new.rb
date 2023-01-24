hash_literal = {
    "one" => 1,
    "two" => 2
}

puts hash_literal["one"]

hash_constructor = Hash.new

hash_constructor["one"] = 1

puts hash_constructor
puts hash_constructor["one"]

