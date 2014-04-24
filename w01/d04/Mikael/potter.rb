require 'pry'

chars = []

f = File.new("potter.csv", "r")
    f.each_line do |line|
      lines = line.chomp.split(",")
      chars.push({:mentions => lines[0].to_i,
        :name => lines[1],
        :house => lines[2]})
    end
f.close


def get_names(characters)
  names = characters.map do |character|
    character[:name]
  end
  return names
end

def get_fivehundred(characters)
  five = characters.select do |character|
    character[:mentions] > 500
  end
  return five
end

def get_houses(characters)
  houses = characters.map do |character|
    character[:house]
  end
  houses.select! {|i| i||false }
  return houses.uniq
end

get_names(chars)

binding.pry
