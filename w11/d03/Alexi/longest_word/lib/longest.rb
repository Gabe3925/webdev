require 'pry'

def longest_word(phrase)
  phrase.gsub(/\W/, " ").split(' ').max_by { |word| word.length }
end
