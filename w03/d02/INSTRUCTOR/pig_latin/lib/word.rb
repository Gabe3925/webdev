class Word
  # attr_reader :vowels, :consonants
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinize
    # creates an array of the characters in original_word
    orig_copy = original_word.chars

    # iterates through an array of exceptions (y, squ, and 'qu'),
    # checking if the word begins with any of the exeptions.
    # if it does, we shift the appropriate number of letters off
    # of orig_copy.
    # Then join the orig_copy array into a string and add the
    # weird pattern + the 'ay'
    ['y', 'squ', 'qu'].each do |pattern|
      if original_word.start_with?(pattern)
        pattern.length.times { orig_copy.shift }
        return orig_copy.join + pattern + "ay"
      end
    end

    case original_word[0]
    when "a", "e", "i", "o", "u"
      return original_word + "way"
    else
      #  here, yi-hsiao makes use of Regular Expressions. RegExs (as they're known)
      # look intimidating, but as you can see, they're incedibly powerful and succinct.
      # Here, .sub's first argument identifies two patterns between pairs of parentheses.
      # the first pattern, [^aeiou]+, stores a cluster of 1 or more non-vowels.
      # The second pattern is the rest of the word. We then concatenate the second pattern
      # with the first and 'ay'.
      return original_word.sub(/^([^aeiou]+)(.+)/, '\2\1ay')
      # To get comfortable with RegEx, visit rubular.com and don't leave for 3 hours :)
    end
  end
end
