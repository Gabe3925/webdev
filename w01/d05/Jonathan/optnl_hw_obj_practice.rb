# Define and write 3 class declarations

require 'pry'

# Pre-Homework
# Just testing a basic class first

# class Shirt
#   def initialize
#     puts 'This is a shirt.'
#   end
# end

# hoodie = Shirt.new
# puts hoodie

# Define the class "Shirt" and return 3 instance variables from 3 arguments
class Shirt
  def initialize(size, color, text)
    @size = size
    @color = color
    @text = text
  end
end

pearl_jam_t = Shirt.new("Yield Tour 1998")
puts pearl_jam_t.text

hipster_plaid = Shirt.new("NO LOGO!")
puts hipster_plaid.text

david_beckham_jersey - Shirt.new("Beckham :)")
puts david_beckham_jersey.text

# binding.pry
