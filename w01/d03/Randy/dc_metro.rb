require 'pry'


red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Judiciary Square', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "Welcome to the DC Metro -- We're Terrible!"
red_stop_list = red.join(" <--> ")
turquoise_stop_list = turquoise.join(" <-->")
orange_stop_list = orange.join(" <--> ")

puts "What line are you getting on? (Red, Turquoise, Orange)"
begin_line  = gets.chomp.downcase
	case begin_line
		when "red"
			puts "Red Line Stations are: #{red_stop_list}"
			begin_line = :red
		when "turquoise"
			puts "Turquoise Line Stations are: #{turquoise_stop_list}"
			begin_line = :turquoise
		when "orange"
			puts "Orange Line Stations are: #{orange_stop_list}"
			begin_line = :orange
		end

puts "What's the stop you'll get on?"
	begin_stop = gets.chomp
	begin_local = dc_metro[begin_line].index(begin_stop)

puts "What line are you getting off? (Red, Turquoise, Orange)"
end_line = gets.chomp.downcase
	case end_line
		when "red"
			puts "Red Line Stations are: #{red_stop_list}"
			end_line = :red
		when "turquoise"
			puts "Turquoise Line Stations are: #{turquoise_stop_list}"
			end_line = :turquoise
		when "orange"
			puts "Orange Line Stations are: #{orange_stop_list}"
			end_line = :orange
		end

puts "What's the stop you'll getting off?"
	end_stop = gets.chomp
	end_local = dc_metro[end_line].index(end_stop)

if begin_line != end_line && end_stop != "Metro Center"
  trip_1_1 = dc_metro[begin_line].index(begin_stop)
  trip_1_2 = dc_metro[begin_line].index("Metro Center")
	if trip_1_1 < trip_1_2
		distance_1 = trip_1_2 - trip_1_1
	else
		distance_1 = trip_1_1 - trip_1_2
	end
  trip_2_1 = dc_metro[end_line].index(end_stop)
  trip_2_2 = dc_metro[end_line].index("Metro Center")
  	if trip_2_1 < trip_2_2
		distance_2 = trip_2_2 - trip_2_1
	else
		distance_2 = trip_2_1 - trip_2_2
	end
distance = (distance_1 + distance_2)
else
	if begin_local < end_local
	distance = end_local - begin_local
	else
	distance = begin_local - end_local
	end
end




puts "There are #{distance} stops until your destination."													


binding.pry
