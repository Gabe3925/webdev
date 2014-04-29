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


puts "Go ahead, say your worst:"
input = gets.chomp


filth = {}
input = input.split(' ')
is_vulgar = false


dirty_words.each do |word|
  filth[word] = true;
end


input.each do |word|
  is_vulgar ||= filth.include?(word)
end


if is_vulgar
  puts "We're rejecting that, you potty mouth."
else
  puts "Okay, we'll publish that."
end
