add = proc { |x, y| x + y }
add_three = add.curry.(3)

puts add_three.call(7)