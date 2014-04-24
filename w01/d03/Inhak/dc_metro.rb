require 'pry'

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "The stops on the red line are: #{red}"
puts "What stop are you getting on at?"
user_enter = gets.chomp
puts "What stop do you want to get off at?"
user_exit = gets.chomp

def find_station_index(line, stop)
  line.each do |x|
    if x = stop
      return line.find_index(stop)
    end
  end
end

start_station_index = find_station_index(red, user_enter)
stop_station_index = find_station_index(red, user_exit)

stops_away = stop_station_index - start_station_index
puts "you are #{stops_away} stops away from your destination."
