[1, 2, 3, 4, 5].each_with_object(Hash.new(0)) do |n,hash|
    puts n #1,2,3,4,5 prints each number in the array
end

[1, 2, 3, 4, 5].each_with_object({}) do |n,hash|
    puts hash #{} {} {} {} {} prints the same hash 5 times
end

[1, 2, 3, 4, 5].each_with_object(Hash.new(0)) do |n,hash|
    puts hash #{} {} {} {} {} prints the same hash 5 times
end

[1, 2, 3, 4, 5].each_with_object(Hash.new(0)) do |n,hash|
    puts hash[n] #0 0 0 0 0 prints the value of each key in hash
end

[1, 2, 3, 4, 5].each_with_object({}) do |n,hash|
    puts hash[n] #prints nothing
end

obj = [1, 2, 3, 4, 5].each_with_object(Hash.new(0)) do |n,hash|
    hash[n] = "Hello"
end
print obj #{1=>"Hello", 2=>"Hello", 3=>"Hello", 4=>"Hello", 5=>"Hello"}

obj2 = [1, 2, 3, 4, 5].each_with_object({}) do |n,hash|
    hash[n] = "Hello"
end
print obj2 #{1=>"Hello", 2=>"Hello", 3=>"Hello", 4=>"Hello", 5=>"Hello"}