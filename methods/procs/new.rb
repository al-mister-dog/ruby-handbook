cube = Proc.new { |x| x ** 3 }
puts [1, 2, 3].map(&cube)

round_down = Proc.new { |x| x.floor }
puts [1.9, 2.6, 3.3].map(&round_down)