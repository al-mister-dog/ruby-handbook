class Bank
    attr_reader :name, :id
    @@id = 0

    def initialize(name)
        @id = @@id
        @name = name
        @@id += 1
    end

    def self.id
        "Id Count: #{@@id}"
    end
end

barclays = Bank.new("Barclays")
hsbc = Bank.new("HSBC")

puts barclays.name
puts barclays.id
puts hsbc.id
puts Bank.id