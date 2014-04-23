# ## Dirty Words

# Here's an interesting challenge: test a phrase against an array of dirty words to see if it raises any red-flags. Use `dirty_words.rb` as a starting point for this exercise.

# 1. Prompt the user with **"Go ahead, say your worst:"**, and then accept an input sentance from them.
# 2. Convert their sentance to an array of words.
# 3. Check if any of their words are flagged as dirty words.
# 4. Print one of the following outcomes:
#   * **"We're rejecting that, you potty mouth."**
#   * **"Okay, we'll publish that."**

# ## Now…

# Do it without nesting any enumerable blocks inside one another.

def ask_for_text
  puts "Go ahead, say your worst:"
  user_response = gets.chomp
end

def is_profane? word_list, dirty_words
  word_list.one? { |word| dirty_words.include? word.downcase }
end

dirty_words = ['pee', 'poop', 'she-dog', 'phallus', 'fornicate', 'frack']
text_block = ask_for_text
words = text_block.split /[^a-z\-]/i  # split text into an array of words
puts ( is_profane? words, dirty_words ) ? "Watch your language!" : "That wasn't that bad."
