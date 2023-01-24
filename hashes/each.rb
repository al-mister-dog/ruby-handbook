num_hash = {
    "one" => 1,
    "two" => 2,
    "three" => 3
}

num_hash.each { |x| puts x }
num_hash.each { |key, val| puts val }
num_hash.each { |key, val| puts key }

user = {
    name: "Alex",
    age: 29
}
