def dc_metro
  red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', Union Station']
  turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
  orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', 'L\'enfant Plaza']

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "Red Line Stops"
puts " "
puts "#{red}"
