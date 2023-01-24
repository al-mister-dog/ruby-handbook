nums = {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5
}

less_than_three = lambda { |k,v| v < 3 }
small_nums = nums.select(&less_than_three)
puts small_nums

letters = {
    a: "a",
    b: "b",
    c: "c",
    d: "d",
    e: "e"
}

less_than_c = lambda { |k,v| v < "c" }
small_letters = letters.select(&less_than_c)