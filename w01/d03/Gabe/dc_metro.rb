red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "This is the red line: "
print red.join("---").chomp


puts "What stop will you board at?"
boarding_stop = gets.chomp

puts "What is your destination stop?"
destination_stop = gets.chomp

#	convert stations into their stop numbers.

#	red.each do |station| select a range of stations 
#			between boarding_stop
#			and destination_stop
#			move this range into a new array called trip
#			count the items in this array and output number.

puts "RED LINE"
red.each_with_index do |station, index|
  puts "#{station}(#{index})"
end
	
a = red.index(boarding_stop)

b = red.index(destination_stop)



trip = (a - b)
trip  = trip.abs

puts "You travelled through #{trip} stations."



