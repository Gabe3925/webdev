dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

puts "Go ahead, say your worst:"

phrase = gets.chomp.downcase.split(" ")

is_dirty = false

phrase.each do |word|
	if !is_dirty
	then is_dirty = dirty_words.index(word) #a search using index, through array dirty words, looking for 
	end
end


if is_dirty
	puts "No way!"
else
	puts "ok"
end