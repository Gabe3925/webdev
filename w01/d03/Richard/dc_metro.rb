red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

# def dist_from_metro(line)
#   line.each_with_index do |stop, index|
# end

# red_hash =
# {
#     'Woodley Park' =>  3,
#     'Dupont Circle' => 2,
#     'Farragut North' => 1,
#     'Metro Center'=> 0,
#     'Judiciary Square' => 1,
#     'Union Station' => 2
# }
# puts red_hash.each {|key, value| puts [key, value]}
def cap(string)
  string.split(" ").map(&:capitalize).join(" ")
end

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

# colors = ["Red", "Turquoise", "Orange"]
# colors.each {|n| puts n}
# puts "Which Metro Like are you on?"
# line = gets.chomp.downcase
red.each {|i| puts i}
puts "Which Metro stop are you at?"
stop = gets.chomp
stop = cap(stop)
puts "What is your destination?"
dest = gets.chomp
dest = cap(dest)

puts stop
puts dest



stops = (dc_metro[:red].index(stop).to_i - dc_metro[:red].index(dest).to_i).abs

puts "There are #{stops} stops between #{stop} and #{dest}."
