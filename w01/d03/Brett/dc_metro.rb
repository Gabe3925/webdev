# Steps to find number of stops between Woodley Park (red) and Beltwater (turquoise)
# 1) need to number each station's distance from Metro Center
# 2) Woodley Park would be 3 and Beltwater would be 2
# 3) take  value and add together to get 5 stops

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "Red line stops:"
puts red

puts "What stop are you departing at? (case-sensitive)"
departure = gets.chomp

puts "What stop are you arriving at? (case-sensitive)"
arrival = gets.chomp

puts "The number of stops for your trip is #{(red.index(departure) - red.index(arrival)).abs}"
