require "pry"

red = ['woodley park', 'dupont circle', 'farragut north', 'metro center', 'union station']
turquoise = ['crystal city', 'metro center', 'shaw', 'beltwater']
orange = ['farragut west', 'mcpherson', 'metro center', 'federal triangle', 'smithsonian', "l'enfant plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "\nWelcome to Metro.\n"

puts "Here are all of the possible lines\n"
puts dc_metro.keys

puts "Which line are you starting with?"
line1 = gets.chomp.to_sym

puts "Here are the stops on #{line1} line"
puts dc_metro[line1]

puts "Where will you start?"
first_stop = gets.chomp

puts "On which line will you stop?"
line2 = gets.chomp.to_sym

puts "Here are all of the stops on #{line2}"
puts dc_metro[line2]

puts "What is your final stop?"
last_stop = gets.chomp

if line1 != line2
  puts "Your #{(dc_metro[line1].index("Metro Center") - dc_metro[line1].index(first_stop) + dc_metro[line2].index(last_stop) - dc_metro[line2].index("Metro Center")).abs} stops"
else
  puts "You are riding one line and have no transfers and #{(dc_metro[line1].index(first_stop) - dc_metro[line2].index(last_stop)).abs} stops"
end

