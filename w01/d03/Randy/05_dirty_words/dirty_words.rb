puts "Do your worst..."
worst = gets.chomp
words_to_check = worst.split(' ')
dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']
is_dirty = false

words_to_check.each do |word|
	if !is_dirty
		is_dirty = dirty_words.include?(word)
	end
end

if is_dirty
	puts "No way!"
else
	puts "Ok"
end
