class Word
  # attr_reader :vowels, :consonants
  def initialize(original_word)
    @original_word = original_word
    # @vowels = ["a", "e", "i", "o", "u"]
    # @consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinize
    orig_copy = original_word.chars

    ['y', 'squ', 'qu'].each do |pattern|
      if original_word.start_with?(pattern)
        pattern.length.times { orig_copy.shift }
        return orig_copy.join + pattern + "ay"
    end

    case original_word.chr
    when "a", "e", "i", "o", "u" then original_word + "way"
    else
      original_word.sub(/^([^aeiou]+)(.+)/, '\2\1ay')
    end
  end
end
