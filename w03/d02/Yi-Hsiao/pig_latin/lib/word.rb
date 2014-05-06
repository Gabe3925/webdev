class Word
  attr_reader :original_word, :pig_latin

  def initialize(original_word)
    @original_word = original_word.downcase
    @pig_latin = get_pig_latin
  end

  def get_pig_latin
    case @original_word[0]
    # for words starting with vowels, add -ay suffix to the word
    when "a", "e", "i", "o", "u" then @original_word + "ay"
    else
      # take the first consecutive set of consonants and move them to the end of the word
      # then add -ay suffix to the word
      @original_word.sub(/(^[^aeiou]+)(.+)/, '\2\1ay')
    end
  end
end
