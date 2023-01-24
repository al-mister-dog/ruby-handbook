people_and_their_ages = {
    alex: 37,
    emma: 33,
    herbie: 2
}

people_and_their_ages.each_key { |name| puts name }
people_and_their_ages.each_value { |age| puts age }