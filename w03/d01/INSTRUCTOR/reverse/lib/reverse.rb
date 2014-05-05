def reverse_words(string)
  string.split(" ").reverse.join(" ")
end

def reverse_each_word(string)
  string.reverse.split(" ").reverse.join(" ")
  # return string.split(" ").map { |word| word.reverse }.join(" ") 
end
