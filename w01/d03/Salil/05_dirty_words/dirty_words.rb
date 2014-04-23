dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']


puts "Go ahead, say your worst:"
worst = gets.chomp.downcase.split

worst.each do |i|
  if (dirty_words.include?(i))
    puts "We're rejecting you, potty mouth"
  else
    puts "Okay we'll publish that"
  end
end
