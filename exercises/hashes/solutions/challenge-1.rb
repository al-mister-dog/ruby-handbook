# Write a method `count_words` that takes in a sentence string and returns a hash
# where the keys are the unique words in the string and the values are the
# number of occurrences of each word. The words in the returned hash should
# be ordered alphabetically.

# You may assume that the input string will only contain lowercase letters and
# spaces.

# Example:
# count_words("the quick brown fox jumps over the lazy dog")
# => {"the"=>2, "brown"=>1, "dog"=>1, "fox"=>1, "jumps"=>1, "lazy"=>1, "over"=>1, "quick"=>1}

def count_words(sentence)
    # Your code here
end


def count_words(sentence)
    words = sentence.split
    counts = words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
    counts.sort_by { |word, _| word }
end
  
  