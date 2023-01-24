class Parent
    def inherited_method
        puts "I am inherited from the Parent Class"
    end
end

class Child < Parent
end

herbie = Child.new

herbie.inherited_method
