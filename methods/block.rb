1.times do
    puts "I am a Block"
end

# can be called multiple times
def capitalize(string)
    return "#{string[0].upcase}#{string[1..-1]}"
end    

puts capitalize("alex")
puts capitalize("herbie")

# can only be called once
["alex", "herbie"].each { |string|
    puts "#{string[0].upcase}#{string[1..-1]}"    
}

