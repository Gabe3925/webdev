# Stephen Stanwood (stephen@stanwoodsolutions.com)

def ok_to_print?(words)
  dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']

  words.each { |w| return false if dirty_words.include? w }

  return true
end

print "Go ahead, say your worst: "
user_words = gets.chomp.downcase.split(' ')
if(ok_to_print?(user_words))
  puts "Looks good to us!"
else
  puts "Uh-oh... we have to check that out..."
end

puts
