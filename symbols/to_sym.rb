strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each { |s| symbols.push(s.to_sym) }
# strings.each { |s| symbols.push(s.intern) }

print symbols