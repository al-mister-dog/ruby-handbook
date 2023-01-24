module Rates
    def interest
        5
    end
end

class Bank
    extend Rates
    attr_accessor :rate
    def initialize(rate)
        @rate = rate
    end

    def compare_rates
        puts Rates.interest
    end
end

puts Bank.interest

barclays = Bank.new(2)
barclays.compare_rates