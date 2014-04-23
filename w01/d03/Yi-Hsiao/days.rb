# #Morning Exercise:

# ### Days of the week
# - This should be done in a new file called `days.rb`
# - The user should be asked to enter what day of the week it (for Monday - Friday)
# - Based on their answer, print an approriate reponse (ie TGIF!)

require "pry"

def ask_question question
  # ask the user a question and returns the response
  puts question
  answer = gets.chomp
end

def get_song_of_day day
  # responds to a particular day of the week
  lyrics = case day.downcase
    when "monday" then "It's just another manic Monday.  I wish it were Sunday."
    when "tuesday" then "Goodbye, Ruby Tuesday.  Who could hang a name on you?"
    when "wednesday" then "Listen to Wednesday's song.  This night you go home alone."
    when "thursday" then "And I was Thursday's child.  Monday, Tuesday, Wednesday, born I was."
    when "friday" then "It's Friday, Friday.  Gotta get down on Friday."
    when "saturday" then "This Saturday we're gonna party all night.  One we will remember the rest of our lives."
    when "sunday" then "Sunday morning rain is falling.  Steal some covers share some skin."
  end
  return lyrics
end

def main
  curr_day = ask_question "What day of the week is it?"
  puts get_song_of_day curr_day
end

main
