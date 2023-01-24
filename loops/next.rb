for num in 1..10
    next if num % 2 == 0
    puts num
end

i = 10
loop do
    i -= 1
    next if i % 2 == 0
    puts i
    break if i < 0
end