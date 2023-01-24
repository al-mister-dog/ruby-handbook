class User
    @@hello = "Hello"
    def self.say_hello
        @@hello
    end
end

puts User.say_hello