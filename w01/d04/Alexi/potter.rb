require 'pry'

# puts "Names of all characters: "

# p_file = File.new("potter.csv", "r")
#   p_file.each_line do |line|

#   potter_array = line.chomp.split(",")
#   puts potter_array[1]
#   puts
# end



puts "Characters with more than 500 mentions: "
counter = 0
p_file = File.new("potter.csv", "r")
  p_file.each_line do |line|
    potter_array = line.chomp.split(",")
    potter_hash = {:mention => potter_array[0].to_i, :name => potter_array[1], :house => potter_array[2]}
      puts potter_hash[:mention].to_i!
      binding.pry    

  end

