def greet(greeting, *friends)
    friends.each {|friend|
        puts "#{greeting}, #{friend}."
    }
end

greet("Hello", "Alex", "Emma", "Herbie")
