# # require 'pg'

# # db_conn = PG.connect(:dbname => 'superheroes_db', :host => 'localhost')

# file = File.new("superheroes.csv", "a+")

# file.each do |line|
#   superhero = line.split(",")
#   superhero_name = superhero[0].gsub("'","")
#   alter_ego = superhero[1]
#   has_cape = superhero[2]
#   power = superhero[3]
#   arch_nemesis = superhero[4]

#   # sql  = "INSERT INTO superheroes (name, alter_ego, has_cape, power, arch_nemesis)"
#   # sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"

#   # db_conn.exec(sql)

# end

# file.close

# # db_conn.close
require 'pry'

superheroes_array_master = []

file = File.new("superheroes.csv", "r+")

file.each do |line|
  superhero_info = line.split(",")

  superhero_hash = {}

  superhero_hash[:superhero_name] = superhero_info[0]
  superhero_hash[:alter_ego] = superhero_info[1]
  superhero_hash[:has_cape?] = superhero_info[2]
  superhero_hash[:power] = superhero_info[3]
  superhero_hash[:arch_nemesis] = superhero_info[4]

  superheroes_array_master << superhero_hash

end

file.close

def adding_super_hero(trait,hash)
    puts "What is the #{trait}?"
    answer = gets.chomp
    return hash[trait.to_sym] = answer
end


puts "What would you like to do? Please choose a letter from menu below:"
puts "(I) Index - List all Super Heros"
puts "(A) Add a Super Hero"
puts "(V) View all info for a specific Super Hero"
puts "(U) Update a Super Hero:"
puts "(R) Remove a Super Hero"
menu_choice = gets.chomp.upcase

case menu_choice
when "I"
  superheroes_array_master.each do |hero|
    puts hero[:superhero_name]
  end

when "A"
  new_hero_hash = {}
  adding_super_hero("superhero_name",new_hero_hash)
  adding_super_hero("alter_ego",new_hero_hash)
  adding_super_hero("has_cape",new_hero_hash)
  adding_super_hero("power",new_hero_hash)
  adding_super_hero("arch_nemesis",new_hero_hash)

when "V"
  puts "Which hero would you like info for?"
  superheroes_array_master.each do |hero|
    puts hero[:superhero_name]
  end
  hero_info_choice = gets.chomp
  superheroes_array_master.each do |hero|
    if hero[:superhero_name] == hero_info_choice
     puts hero
   end
  end

when "U"
  puts "Which superhero would you like to update?"
  superheroes_array_master.each do |hero|
    puts hero[:superhero_name]
  end
  hero_update = gets.chomp
  puts "Which trait would you like to update?"
  superheroes_array_master.each do |hero|
    if hero[:superhero_name] == hero_update
     puts hero.keys
    end
  end
  trait_update = gets.chomp
  puts "What would you like #{trait_update} to be?"
  updated_info = gets.chomp
  superheroes_array_master.each do |hero|
    if hero[:superhero_name] == hero_update
     hero[trait_update.to_sym] = updated_info
    end
  end

when "R"
  puts "Which superhero would you like to remove?"
  superheroes_array_master.each do |hero|
    puts hero[:superhero_name]
  end
  hero_remove = gets.chomp
  superheroes_array_master.each do |hero|
    if hero[:superhero_name] == hero_remove
     superheroes_array_master.delete(hero)
    end
  end
  binding.pry

end

