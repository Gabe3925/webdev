# #DC Metro App

# ###Learning Objectives:
#   * exercise your problem modeling skills (whiteboard first!!!)
#   * practice working with collections
#   * continue practicing your git commands (ABC = "Always Be Committing")


# ###The Program:
# - You will be creating a program that models a simple subway system.
# - The program takes the line and stop that a user is getting on at and the line
# and stop that user is getting off at and prints the total number of stops for the trip.

# ### The Deets:
# - There are 3 subway lines:
#   - The Red line, which has the following stops:
#     - Woodley Park
#     - Dupont Circle
#     - Farragut North
#     - __Metro Center__
#     - Judiciary Square
#     - Union Station


#    * The Fictional "Turquoise" line, which has the following stops:
#      * Crystal City
#      * __Metro Center__
#      * Shaw-Howard
#      * Beltwater

#    * The Orange line, which has the following stops:
#      - Farragut West
#      - McPherson Sq
#      - __Metro Center__
#      - Federal Triangle
#      - Smithsonian
#      - L'enfant Plaza


# ###The Process
# 1) Before you start coding away, close your laptops and draw a diagram of the metro lines with their stops and how they intersect.

# 2) Write out---step by step, in plain English---how you would find the number of stops between the Woodley Park stop on the Red line and the Beltwater stop on the Turqoise line. What values do you need, and how will you use them?

# 3) Re-open your laptops and set up your data at the top of your program; the kindly DC Metro Authority has gone to the trouble of arranging your data for you:

# ```ruby
# red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
# turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
# orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

# dc_metro = {}
# dc_metro[:red] = red
# dc_metro[:turquoise] = turquoise
# dc_metro[:orange] = orange
# ```

# 4) Build your program from the ground up, starting with single-line functionality:
#   - Assume that the Red line is the only subway line first.
#     - The user should be given a list of all the stops on the Red line
#     - The user should be able to enter the stop that they want to get on at
#     - The user should be able to enter the stop that they want to get off at
#     - The user should be told the number of stops for their trip

# 5) Now move on to two-line functionality (Red and Turqoise)
#   - The user should be asked what line they want to get on
#   - The user should be given a list of all the stops on that line
#   - The user should be able to enter the stop that they want to get on at
#   - The user should be asked what line they want to get off
#   - The user should be given a list of all the stops on that line
#   - The user should be able to enter the stop that they want to get off at
#   - The user should be told the number of stops for their trip

# 6) Now move on to three-line functionality (Red, Turqoise, and Orange)
#   - Make your program work with all three lines

require "pry"

# get where the user is
# get where the user is going
# calculate if i'm going forward or backwards
# count distance from stops

class Metro
  attr_reader :lines

  def initialize
    @lines = {}
  end

  def add_lines line_name, list_stops
    @lines[line_name] = list_stops
  end

  def find_stop stop_name, line_name
    # returns the location of the stop in an array
    # => [line_color, stop_num]

    unless line_name
      @lines.each do |color, metro_stops|
        stop_num = metro_stops.index stop_name
        return [color, stop_num] if stop_num
      end
    else
      return [line_name, @lines[line_name].index(stop_name)]
    end
  end

  def calc_distance first_stop, last_stop, last_line
    # accepts an array [line_name, stop_num] for first_stop and last_stop
    # returns distance between the two stops
    first_loc = find_stop first_stop, nil
    last_loc = find_stop last_stop, last_line

    first_line = first_loc[0]
    first_stop_num = first_loc[1]
    last_line = last_loc[0] unless last_line
    last_stop_num = last_loc[1]

    # return distance if stops are on the same line
    # else find juncture and calculate distance in multiple trips
    if first_line == last_line
      return (last_stop_num - first_stop_num).abs
    else
      juncture = (@lines[first_line] & @lines[last_line]).first
      first_leg = calc_distance first_stop, juncture, first_line
      last_leg = calc_distance last_stop, juncture, last_line
      return first_leg + last_leg
    end
  end
end

def ask_user question, poss_answers
  puts question
  user_response = gets.chomp.split.map(&:capitalize).join(" ")  # capitalizes each word

  if poss_answers.include? user_response
    return user_response
  else
    puts "Sorry, I didn't understand you.  Type 'lines' if you need to find stops.", ""
    ask_user question, poss_answers
  end
end

# stops in dc metro
red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

# create metro line object
dc_metro = Metro.new
dc_metro.add_lines :red, red
dc_metro.add_lines :turquoise, turquoise
dc_metro.add_lines :orange, orange

first_stop = ask_user("Which stop are you currently on?", dc_metro.lines.values.flatten)
final_stop = ask_user("Which stop do you want to go to?", dc_metro.lines.values.flatten)

# get the line name and stop number for the first and last stop
puts dc_metro.calc_distance first_stop, final_stop, nil

