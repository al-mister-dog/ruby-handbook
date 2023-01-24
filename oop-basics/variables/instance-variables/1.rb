class Person
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

alex = Person.new("Alex")
puts alex.name
# puts Person.name #error