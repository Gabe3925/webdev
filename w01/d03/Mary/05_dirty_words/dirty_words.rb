dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

puts "Go ahead, say your worst!"
phrase = gets.chomp.downcase.split(' ')

is_dirty = false
phrase_array.each do |x|
  dirty_words.each do |y|
    if x == y
      is_dirty = true
    end
  end
end

if is_dirty == true
  puts "this is dirty!"
else
  puts "this is ok, we will publish"
end
