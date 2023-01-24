fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect { |fib| fib * 2 }

puts doubled_fibs

# adding a ! symbol to the end of a method modifies the original array

def times_by(numbers, n) 
    numbers.collect { |number| number * n }
end

tripled_fibs = times_by(fibs, 3)

puts tripled_fibs