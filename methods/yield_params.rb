def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

def yield_nums(number)
    puts 1
    puts 2
    yield(number)
    puts 4
    yield(number + 2)
end

yield_nums(3) { |n| puts n }
