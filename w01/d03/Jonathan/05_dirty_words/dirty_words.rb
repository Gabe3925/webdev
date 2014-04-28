dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']
<<<<<<< HEAD

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
=======
<<<<<<< HEAD


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
=======
>>>>>>> 5269418d61924848620646f9bddc734bff0c15c5
>>>>>>> 7f9384e37fa2584e5cfa86e7d4be27cfe4da8e92
