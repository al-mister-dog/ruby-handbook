class Num
    def return_num
        1
    end
end

class Two < Num
    def return_num
        2
    end
end

one = Num.new
two = Two.new

puts one.return_num
puts two.return_num