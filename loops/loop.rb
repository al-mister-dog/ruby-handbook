i = 10

loop do 
    puts i
    i -= 1
    break if i < 0
end



loop {
    puts i
    i += 1
    break if i > 10
}