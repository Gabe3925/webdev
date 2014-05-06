class Word
  attr_reader :vowels
  def initialize(original_word)
    @original_word = original_word
    @vowels = ["a", "e", "i", "o", "u"]
  end

  def original_word
    return @original_word.downcase
  end


  def pig_latinize
    array = @original_word.split("")

    if vowels.include?(array.first)
      return "#{array.join("")}way"
    else
      return "#{(array << array.shift).join("")}ay"
    end


  end
end
