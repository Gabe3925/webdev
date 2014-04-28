dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

puts "Go ahead, say your worst:"
sentence = gets.chomp.downcase.split(' ')
is_dirty = false

sentence.each do |word|
  if !is_dirty
    is_dirty = dirty_words.include?(word)
  end
end

if is_dirty
  puts "Naughty!"
else
  puts "OK!"
end
