dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

puts "Go ahead, say your worst:"
user_input = gets.chomp.downcase.split(" ")
is_dirty = false

user_input.each do |word|
  if !is_dirty
    is_dirty = dirty_words.include?(word)
  end
end

if is_dirty
  puts "Dirty!"
else
  puts "Clean!"
end

# dirty_words.each do |word|
#   if user_input.include?(word)
#     reject = true
#   else
#    reject = false
#   end
# end

# puts "We're rejecting that you filthy animal." if reject == true
# puts "Looks clean" if reject == false

