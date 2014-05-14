require 'pg'

db_conn = PG.connect(:dbname => 'db_heros', :host => 'localhost')

file = File.new("hero_data.csv", "a+")

file.each do |line|
  superhero = line.split(",")
  superhero_name = superhero[0].gsub("'","")
  alter_ego = superhero[1]
  has_cape = superhero[2]
  power = superhero[3]
  arch_nemesis = superhero[4]

  sql  = "INSERT INTO players (name, age, team, games, points)"
  sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"

  db_conn.exec(sql)

end

file.close

db_conn.close
