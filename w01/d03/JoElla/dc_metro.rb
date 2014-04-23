
red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
#turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
#orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

#dc_metro = {}
#dc_metro[:red] = red
#dc_metro[:turquoise] = turquoise
#dc_metro[:orange] = orange

puts "Where are you getting on?"
on_stop = gets.chomp
puts "Where are you getting off?"
off_stop = gets.chomp

on_stop_num = red.index(on_stop)
off_stop_num = red.index(off_stop)

num_of_stops = (on_stop_num - off_stop_num).abs

puts "You have #{num_of_stops} stop"


