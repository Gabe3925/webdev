dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

puts "Please enter a phrase: "
  phrase = gets.chomp.downcase.split(' ')
  is_dirty = false

  phrase.each do |word|
    if !is_dirty
      is_dirty = dirty_words.include?(word)
    end
  end
    if is_dirty
      puts "WARNING! Phrase rejected."
    else
      puts "Thank you."
    end

