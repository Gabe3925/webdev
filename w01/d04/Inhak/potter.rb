
#Method 1 - Returns names of all characters
def name_lister_file (file)
  names = file
      names.each_line do |line|
        name_data = line.chomp.split(",")
        puts name_data[1]
      end
  names.close
end

def mentioned_alot (file)
  names = file
  mentioned = []
    names.each_line do |line|
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
  names.close
end

def houses (file)
end



puts "NAMES OF PEOPLE"
name_lister_file(File.new("potter.csv", "r"))
puts "\nARRAYS OF PEOPLE MENTIONED A LOT"
mentioned_alot(File.new("potter.csv", "r"))
