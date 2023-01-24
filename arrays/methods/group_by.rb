def group_by_remainder(numbers, modulo)
    numbers.group_by { |x| x % modulo }
end

print group_by_remainder([1, 2, 3, 4, 5], 3)

hash = {a: 1, b: 2, c: 3, d: 4, e: 5}
puts hash.group_by { |k, v| v % 2 }

puts {a: 1, b: 2, c: 3, d: 4}