class Person
    attr_reader :name
    attr_writer :age
    attr_accessor :job

    def initialize(name, age, job)
        @name = name
        @age = age
        @job = job
    end
end

alex = Person.new("Alex", 37, "Musician")

# Try accessing or editing the variables