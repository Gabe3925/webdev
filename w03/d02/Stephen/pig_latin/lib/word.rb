# Stephen Stanwood (stephen@stanwoodsolutions.com)

class Word
  ALPHABET = ('a'..'z').to_a
  VOWELS = ['a', 'e', 'i', 'o', 'u', 'y']
  CONSONANTS = ALPHABET - VOWELS

  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  # Converts a normal English word into its Pig Latin equivalent
  def piglatinize
    orig_copy = original_word.chars

    # special case for when the word starts with a 'y' (which is a consonant)
    if orig_copy[0] == 'y'
      orig_copy.shift
      return orig_copy.join + "yay"
    end

    # special case for words that start with 'qu'
    if original_word.start_with?('qu')
      2.times { orig_copy.shift }
      return orig_copy.join + "quay"
    end

    # special case for words that start with 'squ'
    if original_word.start_with?('squ')
      3.times { orig_copy.shift }
      return orig_copy.join + "squay"
    end

    # if the word starts with a vowel, just add "way" and we're done
    return original_word + "way" if VOWELS.include? orig_copy[0]

    while true
      first = orig_copy[0]

      break if !CONSONANTS.include? first

      # cut off the first character & add it to the end
      orig_copy.shift
      orig_copy.push(first)
    end

    return orig_copy.join + "ay"
  end
end
