two_dimensional = [[1, 2, 3, 4], [5, 6, 7, 8]]

two_dimensional.each { |arr| puts "#{arr}" }

two_dimensional.each { |arr|
    arr.each { |el| puts el }
}