red = ['WOODLEY PARK', 'DUPONT CIRCLE', 'FARRAGUT NORTH', 'METRO CENTER', 'JUDICIARY SQUARE', 'UNION STATION']
turquoise = ['CRYSTAL CITY', 'METRO CENTER', 'SHAW-HOWARD', 'BELTWATER']
# orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
# dc_metro[:orange] = orange

puts "Welcome to DC Metro! What line would you like to get on? Options are red and turquoise."
line_start = gets.chomp.downcase
if line_start == "red"
  puts "Great! The stations on the red line are " + red.join(", ") + ". Where would you like to get on?"
elsif line_start == "turquoise"
  puts "Great! The stations on the turquoise line are " + turquoise.join(", ") + ". Where would you like to get on?"
end
station_start = gets.chomp.upcase

puts "Okay, and which line would you like to get off at?"
line_stop = gets.chomp.downcase
if line_stop == "red"
  puts "Great! The stations on the red line are " + red.join(", ") + ". Where would you like to get off?"
elsif line_stop == "turquoise"
  puts "Great! The stations on the turquoise line are " + turquoise.join(", ") + ". Where would you like to get off?"
end
station_stop = gets.chomp.upcase

if line_start == "red" && line_stop == "red"
  puts "Your trip will be #{(red.index(station_start) - red.index(station_stop)).abs} stops."
elsif line_start == "turquoise" && line_stop == "turquoise"
  puts "Your trip will be #{(turquoise.index(station_start) - turquoise.index(station_stop)).abs} stops."
elsif line_start == "red" && line_stop == "turquoise"
  red_distance = (red.index(station_start) - red.index("METRO CENTER")).abs
  turquoise_distance = (turquoise.index(station_stop) - turquoise.index("METRO CENTER")).abs
  puts "Your trip will be #{red_distance + turquoise_distance} stop(s)."
else
  red_distance = (red.index(station_stop) - red.index("METRO CENTER")).abs
  turquoise_distance = (turquoise.index(station_start) - turquoise.index("METRO CENTER")).abs
  puts "Your trip will be #{red_distance + turquoise_distance} stop(s)."
end
