red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange


	puts "What line are you boarding on? red, orange, turquoise ?"
	boarding_line = gets.chomp.downcase

	case boarding_line
	when "red" 
		"red" == red
	when "orange" 
		"orange" == orange
	else 
		 boarding_line == turquoise

	end

	#puts red.join("---")   old line show-er

	puts dc_metro(destination_line).join("---")

	puts "What stop will you board at?"
	boarding_stop = gets.chomp

	puts "What line is your destination on? red, orange, turquoise ?"
	destination_line = gets.chomp.downcase

	puts dc_metro(destination_line).join("---")

	puts "What stop is your destination at?"
	destination_stop = gets.chomp

	


#----------------------------------------------#


	puts red.index

	red.each_with_index do |station, index|
	end

	a = red.index(boarding_stop)

	b = red.index(destination_stop)
	#if I can make these 'red' values variable depending on user boarding-line input, GOOD!



trip = (a - b)
trip  = trip.abs


puts "You made #{trip} stops."





#case boarding_line
#
#
#when red
#
#when orange
#
#when turquoise
#
#
#	puts "What is your destination stop?"
#	destination_stop = gets.chomp
#
#
#end
#	
#a = red.index(boarding_stop)
#
#b = red.index(destination_stop)
#
#trip = (a - b)
#trip  = trip.abs
#
#puts "You made #{trip} stops."



