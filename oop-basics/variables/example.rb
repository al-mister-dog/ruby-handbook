class Computer
    $manufacturer = "Mango Computer, Inc"
    @@files = {hello: "Hello, world!"}

    def initialize(username, password)
        @username = username
        @password = password
    end

    def current_user
        @username
    end

    def self.display_files
        @@files
    end
end

hal = Computer.new("Dave", 12345)

# Instance
puts "Current User: #{hal.current_user}"

# Global
puts "Manufacturer: #{$manufacturer}"

# Class
puts "Files: #{Computer.display_files}"