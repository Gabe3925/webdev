puts "Go ahead say your worst!"
sentence = gets.chomp.split(', ')

dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']
is_dirty = false

# sentence.each do |words|
#   dirty_words.each do |bad|
#     if words.downcase.include? bad.downcase
#       puts "cannot print!"
#       break
#       end
#   end
# end

sentence.each do |words|
  if !is_dirty
    is_dirty = dirty_words.include?(words)
    return # prevents the enumeration from working through entire array
  end
end

if is_dirty
  puts "No way!"
else
  puts "ok."
end

