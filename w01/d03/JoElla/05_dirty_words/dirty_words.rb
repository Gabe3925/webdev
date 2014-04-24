dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

puts "Say your worst!"
werds = gets.chomp.split(' ')

dirty = werds.select do |werd|
  dirty_words.include?(werd)
end

if dirty.length > 0
  puts "no"
else
  puts "yes"
end



