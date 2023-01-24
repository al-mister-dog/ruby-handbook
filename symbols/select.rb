ages = {
    alex: 37,
    emma: 33,
    herbie: 2
}

young_people = ages.select { |k,v| 
    v < 30
}

puts young_people