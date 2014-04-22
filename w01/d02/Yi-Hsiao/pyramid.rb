# # Simple ASCII Art

# * Ask the user for a character
# * Ask the user for the number of rows in the pyramid
# * Print out a simple ASCII art pyramid

# ![](pyramid.png)

# ### Bonus

# * Ask the user if they want their pyramid upside-down and print it the way that they want it.

def get_rows
  # prompts a user for the number of rows on their pyramid
  # expects a positive integer
  # repeat question if user enters wrong input

  puts "How many rows do you want on your pyramid?"
  response = gets.chomp
  if response =~ /^[0-9]+$/ && response.to_i > 0
    response.to_i
  else
    puts "Sorry, please put a positive integer in."
    get_rows
  end
end

def pointy_on_top?
  poss_answers = ["Y", "N"]
  puts "Do you want the point on top (#{poss_answers.join(",")})?"
  answer = gets.chomp.upcase
  if poss_answers.include? answer
    answer == "Y" ? true : false
  else
    puts "Sorry, I didn't understand you."
    point_on_top?
  end
end

def build_pyramid block, num_rows, point_on_top
  max_blocks_in_row = 2*num_rows + 1

  num_rows.times do |i|
    j = point_on_top ? i : num_rows - i - 1
    puts (block * (2*j + 1)).center max_blocks_in_row
  end
end

def main
  puts "Time to make a pyramid.  Give me a character to build the pyramid with.  If more than one character is given, only the first one is used."
  block = gets.chr
  num_rows = get_rows
  build_pyramid block, num_rows, pointy_on_top?
end

main




