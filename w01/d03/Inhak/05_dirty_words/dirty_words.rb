dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']
contains_bad_language = false

def bad_language_checker(word)

end

puts "GO AHEAD! SAY YOUR WORST!"
sentence = gets.chomp.downcase.split(" ")

sentence.each do |i|
  dirty_words.each do |j|
    if i == j
      contains_bad_language = true
    end
  end
end

if contains_bad_language == true
  puts "We can't publish that, you potty mouth."
else
  puts "Okay that seems fine."
end
