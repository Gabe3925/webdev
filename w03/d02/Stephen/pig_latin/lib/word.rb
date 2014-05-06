# Stephen Stanwood (stephen@stanwoodsolutions.com)

class Word
  ALPHABET = ('a'..'z').to_a
  VOWELS = ['a', 'e', 'i', 'o', 'u', 'y']
  CONSONANTS = ALPHABET - VOWELS
  SPECIAL_STARTS = ['y', 'qu', 'squ']

  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  # Converts a normal English word into its Pig Latin equivalent
  def piglatinize
    orig_copy = original_word.chars

    # check for special cases like 'y', 'qu', 'squ'...
    SPECIAL_STARTS.each do |pattern|
        if original_word.start_with?(pattern)
          pattern.length.times { orig_copy.shift }
          return orig_copy.join + pattern + "ay"
        end
    end

    # if the word starts with a vowel, just add "way" and we're done
    return original_word + "way" if VOWELS.include? orig_copy[0]

    # if the word stars with a consonant, keep moving through it
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
