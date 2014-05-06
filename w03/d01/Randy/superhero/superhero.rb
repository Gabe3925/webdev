require 'pry'
require 'pg'
sh_conn = PG.connect(dbname: 'superheros_db', host: 'localhost')

def list_all_heros(connection)
  puts connection.exec("SELECT superhero_name FROM heros;").values
end

def add_hero(conn)
  puts "What is the Heroes name?"
  sh_name = gets.chomp
  puts "What is the heroes alter-ego?"
  sh_alter = gets.chomp
  puts "Does the hero have a cape? (y/n)"
  cape = gets.chomp
    if cape.include? "y"
      cape = true
    else
      cape = false
    end
  puts "What's the heroes power?"
  power = gets.chomp
  puts "Who is the heroes arch-nemesis?"
  nemesis = gets.chomp
  conn.exec("INSERT INTO heros(superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{sh_name}', '#{sh_alter}', '#{cape}', '#{power}', '#{nemesis}')")
end

def specific_info(conn)
  puts "Which hero would you like to know more about?"
  puts conn.exec("SELECT superhero_name FROM heros;").values
  hero_name = gets.chomp
  puts conn.exec("SELECT * FROM heros WHERE superhero_name = '#{hero_name}'").values
end

def update_hero(conn)
  puts "Which hero would you like to update?"
  puts conn.exec("SELECT superhero_name FROM heros;").values
  hero_name = gets.chomp
  puts "Which attribute would you like to update?"
  puts "1-Name <-> 2-Alter-Ego <-> 3-Cape <-> 4-Powers <-> 5-Nemesis"
  answer = gets.chomp
    case answer
      when "1"
        puts "What is the updated Super Hero name?"
        new_name = gets.chomp
        conn.exec("UPDATE heros SET superhero_name = '#{new_name}' WHERE superhero_name = '#{hero_name}'")
      when "2"
        puts "What is the updated Alter-Ego?"
        new_ego = gets.chomp
        conn.exec("UPDATE heros SET alter_ego = '#{new_ego}' WHERE superhero_name = '#{hero_name}'")
      when "3"
        puts "Does the hero have a cape? (y/n)"
        cape = gets.chomp
          if cape.include? "y"
            cape = true
          else
            cape = false
          end
        conn.exec("UPDATE heros SET has_cape = '#{cape}' WHERE superhero_name = '#{hero_name}'")
      when "4"
        puts "What is the updated power?"
        new_power = gets.chomp
        conn.exec("UPDATE heros SET power = '#{new_power}' WHERE superhero_name = '#{hero_name}'")
      when "5"
        puts "Who is the updated Nemesis?"
        new_nem = gets.chomp
        conn.exec("UPDATE heros SET alter_ego = '#{new_nem}' WHERE superhero_name = '#{hero_name}'")
      end
end

def remove_hero(conn)
  puts "Which hero would you like to update?"
  puts conn.exec("SELECT superhero_name FROM heros;").values
  hero_name = gets.chomp
  conn.exec("DELETE FROM heros WHERE superhero_name = '#{hero_name}'")
end

response = ""
while response != 'q'
  puts "Please select a menu option."
  puts "(I) Index - List all Super Heros"
  puts "(C) Add a Super Hero"
  puts "(R) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(D) Remove a Super Hero"
  puts "(Q) Quit"
  response = gets.chomp.downcase

  case response
    when "i"
      list_all_heros(sh_conn)
    when "c"
      add_hero(sh_conn)
    when "r"
      specific_info(sh_conn)
    when "u"
      update_hero(sh_conn)
    when "d"
      remove_hero(sh_conn)
  end
end
sh_conn.close
