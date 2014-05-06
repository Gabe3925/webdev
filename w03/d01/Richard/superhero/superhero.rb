require 'pg'

superhero_conn = PG.connect(:dbname => 'super_hero_db', :host => 'localhost')

def list_heros(superhero_conn)
  puts superhero_conn.exec("SELECT name FROM super_heros;").values
end

def add_hero(superhero_conn)
  puts "What is your Superhero's name?"
  name = gets.chomp
  puts "What is their alias?"
  cover = gets.chomp
  puts "Do they have a cape?"
  has_cape = gets.chomp
    if has_cape.include? 'y'
      has_cape = true
      cape = "a derpy cape"
    else
      has_cape = false
      cape = "no cape"
    end
  puts "What is their power?"
  strength = gets.chomp
  puts "Who is their rival?"
  rival = gets.chomp
  superhero_conn.exec("INSERT INTO super_heros (name, cover, has_cape, strength, rival) VALUES ('#{name}', '#{cover}', '#{has_cape}', '#{strength}', '#{rival}');")
  puts "#{name}, or \"#{cover}\" *wink*, with #{cape} and with the power of #{strength} and a rival named #{rival}"
end

def view_details(superhero_conn, name)
  results = superhero_conn.exec("SELECT * FROM super_heros WHERE name = '#{name}';")
  puts results[0]
end

def update_hero(superhero_conn, superhero_name, input)
  case
    when 1
      puts "What would you like to change #{superhero_name}'s name to?"
      name = gets.chomp
      superhero_conn.exec("UPDATE super_heros SET name = '#{name}' WHERE name = '#{superhero_name}';")
    when 2
      puts "What would you like to change #{superhero_name}'s alias to?"
      cover = gets.chomp
      superhero_conn.exec("UPDATE super_heros SET cover = '#{cover}' WHERE name = '#{superhero_name}';")
    when 3
      puts "Does the #{superhero_name} have a cape?"
      has_cape = gets.chomp
      superhero_conn.exec("UPDATE super_heros SET has_cape = '#{has_cape}' WHERE name = '#{superhero_name}';")
    when 4
      puts "What is #{superhero_name}'s strength?"
      strength = gets.chomp
      superhero_conn.exec("UPDATE super_heros SET strength = '#{strength}' WHERE name = '#{superhero_name}';")
    when 5
      puts "Who is #{superhero_name}'s rival?"
      rival = gets.chomp
      superhero_conn.exec("UPDATE super_heros SET rival = '#{rival}' WHERE name = '#{superhero_name}';")
    else
    end
  end

  def remove_superhero(superhero_conn, super_hero)
    superhero_conn.exec("DELETE FROM super_heros WHERE name = '#{super_hero}';")
  end

x = true
while x
  puts "What would you like to do?"
  puts "(I) Index - List all Super Heros"
  puts "(C) Add a Super Hero"
  puts "(R) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(D) Remove a Super Hero"
  input = gets.chomp.downcase


  if input.include? 'i'
    list_heros(superhero_conn)
  elsif input.include? 'c'
    add_hero(superhero_conn)
  elsif input.include? 'r'
    puts "Who would you like to see?"
    list_heros(superhero_conn)
    hero = gets.chomp
    view_details(superhero_conn, hero)
  elsif input.include? 'u'
    puts "Who would you like to update?"
    list_heros(superhero_conn)
    hero = gets.chomp
    puts "What would you like to update:"
    puts "1. Name"
    puts "2. Alias"
    puts "3. Cape?"
    puts "4. Power?"
    puts "5. Rival?"
    update = gets.chomp.to_i
    update_hero(superhero_conn, hero, update)
  elsif input.include? 'd'
    puts "Who would you like to remove?"
    list_heros(superhero_conn)
    hero = gets.chomp
    remove_superhero(superhero_conn, hero)
  else
    x= false
  end
end
