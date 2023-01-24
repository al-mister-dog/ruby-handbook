def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

def count_to_four
  puts 1
  puts 2
  yield
  puts 4
end

count_to_four { puts 3}