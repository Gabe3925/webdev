# Stephen Stanwood (stephen@stanwoodsolutions.com)

# Prompts the user and returns choice of line (sym)
def prompt_line(on_off)
  while true
    print "Which line to get #{on_off} ('red', 'turquoise', or 'orange')? "
    line = gets.chomp.downcase.to_sym
    case line
    when :red, :turquoise, :orange
      return line
    else
      puts "==> Pick 'red', 'turquoise', or 'orange'"
    end
  end
end

# Prompts the user and return choice of stop (String)
def prompt_stop(line, stops)
  while true
    print "Stops on the #{line.capitalize} Line: #{stops.join(", ")}... pick one! "

    # least awkward method of capitalizing the first letter of each word
    stop = gets.chomp.split(" ").map(&:capitalize).join(" ")
    return stop if stops.include?(stop)
  end
end

# counts the number of stops to Metro Center (the transfer point)
def to_mc(stops, stop)
  return (stops.index("Metro Center") - stops.index(stop)).abs
end


red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "Welcome to the Metro Trip Calculator!"

on_line = prompt_line("on")
on_stop = prompt_stop(on_line, dc_metro[on_line])
puts

off_line = prompt_line("off")
off_stop = prompt_stop(off_line, dc_metro[off_line])
puts

# no transfer case
if on_line == off_line
  line = dc_metro[on_line]
  num_stops = (line.index(on_stop) - line.index(off_stop)).abs

# transfer case
else
  num_stops = to_mc(dc_metro[on_line], on_stop) +
    to_mc(dc_metro[off_line], off_stop)
end

puts "==> That trip takes #{num_stops} stops!"
