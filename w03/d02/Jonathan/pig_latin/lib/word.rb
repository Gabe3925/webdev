class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def starts_with_vowel(letter)
    letter = original_word
  end

end
