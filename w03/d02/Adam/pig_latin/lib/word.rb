class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def word_beginning_with_vowel
    # if words begins iwth vowel add way
    @original_word = original_word + ('way')
  end

  def word_beginning_with_constant
    @original_word = original_word.split + original_word.slice(0) + ('ay')
  end


end
