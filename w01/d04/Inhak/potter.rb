
#Method 1 - Returns names of all characters
def name_lister_file (file)
  file.each_line do |line|
    name_data = line.chomp.split(",")
    puts name_data[1]
  end
  file.close
end

def mentioned_alot (file)
  mentioned = []
    file.each_line do |line|
      name_data = line.chomp.split(",")
      if name_data[0].to_i > 500
        mentioned.push({
          mentioned: name_data[0],
          name: name_data[1],
          house: name_data[2],
        })
      end
    end
  puts mentioned
  file.close
end

def houses (file)
  houses = []
    file.each_line do |line|
      name_data = line.chomp.split(",")
      if name_data[2] != nil
        houses.push(name_data[2])
      end
    end
  puts houses.uniq
  file.close
end

def one_word_names (file)
  jesus_wizards = []
  file.each_line do |line|
    name_data = line.chomp.split(",")
    if !name_data[1].include?(" ")
      jesus_wizards.push({
          mentioned: name_data[0],
          name: name_data[1],
          house: name_data[2],
        })
    end
  end
  puts jesus_wizards
end

def

end


puts "NAMES OF PEOPLE"
name_lister_file(File.new("potter.csv", "r"))
puts "\nARRAYS OF PEOPLE MENTIONED A LOT"
mentioned_alot(File.new("potter.csv", "r"))
puts "\nHOUSES OF HOGWARTS"
houses(File.new("potter.csv", "r"))
puts "\nWIZARDS WITH ONE WORD NAMES"
one_word_names(File.new("potter.csv", "r"))

