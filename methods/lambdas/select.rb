my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|el| el.is_a? Symbol }

symbols = my_array.select(&symbol_filter)

puts symbols