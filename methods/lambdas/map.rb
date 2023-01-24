strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |s| s.to_sym }

symbols = strings.map(&symbolize)
print symbols