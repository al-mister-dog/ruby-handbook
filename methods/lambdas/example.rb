greet = lambda { |name| puts "Hello, #{name}!" }
greet.call("Alex")

names = ["Alex", "Emma", "Herbie"]

names.each { |name| greet.call(name) }

def lambda_demo(a_lambda)
    puts "I'm the method!"
    a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })