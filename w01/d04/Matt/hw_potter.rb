require "pry"
# answer = "0"
# puts ""
# puts "Welcome to the jungle\n"

# puts "1. If you want to add an animal"
# puts "2. If you want to see the animals"
# puts "3. If you want to leave"
# answer = gets.chomp
# if answer == "1"
#   f = File.new("potter.csv", "a+")
#     puts "What is the animal species?"
#     species = gets.chomp
#     puts "What is it\'s name?"
#     name = gets.chomp
#     animal = [species,name]
#     f.puts animal.join(",")
#   f.close
# elsif answer == "2"
potter_chars = []
  f = File.new("potter.csv", "r")
    f.each_line do |line|
      potter_data = line.chomp.split(",")

      potter_chars.push({:mentions => potter_data[0], :name => potter_data[1], :house => potter_data[2]})
      # puts potter_chars
    end

    # list all names
    all_names = potter_chars.map do |names|
      names[:name]
    end
    puts all_names

    # find characters mentioned more than 500x
    plus_500 = potter_chars.select do |num|
      num[:mentions].to_i > 500
    end
    puts plus_500

    # list all houses
    houses_list = potter_chars.map do |houses|
      houses[:house]
    end
    puts houses_list.uniq

    # find all names that are only 1 word
    if all_names.include?(" ")
      all_names.delete
    end

    # find characters with one word names
    one_name = potter_chars.select do |name|
      name[:name].include('Weasley')
    end


    # huff_names = potter_chars.map do |huff|
    #   huff[:house].count('Hufflepuff')
    # end


    binding.pry
  f.close
# else
# end

# chars = File.new("potter.csv", "r")
# chars.each_line do |line|
#   potter_data = line.chomp.split(",")
#   puts potter_data
#   potter_chars = []

#   # char_apps = potter_data[0]
#   # puts char_apps.each
#   binding.pry
# end
  # char_apps = potter_data[0]
  # char_name = potter_data[1]
  # char_house = potter_data[2]
  # puts "#{char_apps} + #{char_name} + #{char_house}"


# chars.close

# name = line.chomp.split(",")

# IO.foreach("potter.csv") {|x| print x }
