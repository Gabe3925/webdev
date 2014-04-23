red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]
def cap(string)
  string.split(" ").map(&:capitalize).join(" ")
end

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange



red.each {|i| puts i}
puts "Which Metro stop are you at?"
stop = gets.chomp
stop = cap(stop)
puts "What is your destination?"
dest = gets.chomp
dest = cap(dest)

puts stop
puts dest
