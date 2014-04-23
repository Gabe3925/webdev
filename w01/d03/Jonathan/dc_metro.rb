require 'pry'

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', 'L\'enfant Plaza']


dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "Red Line Stops"
puts dc_metro[:red]
puts "What stop would you like to leave from?"
sta_start = gets.chomp
puts "What stop would you like to go to?"
sta_end = gets.chomp

now = red.index(sta_start)
later = red.index(sta_end)
distance = later - now

puts "You have traveled #{distance} stops."

binding.pry
