# .respond_to? takes a symbol and returns true if an object 
# can receive that method and false otherwise.

age = 26
puts age.respond_to?(:next)

word = "hello"
puts word.respond_to?(:length)
puts word.respond_to?(:push)