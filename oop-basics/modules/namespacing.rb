# scope resolution operator ::
module Circle 
    PI = 3.141592653589793
end

module Cakes
    PI = "Apple"
end

puts Math::PI
puts Circle::PI
puts Cakes::PI