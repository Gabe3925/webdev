# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.create([
  {name: 'Mario', img_url: 'http://upload.wikimedia.org/wikipedia/en/9/99/MarioSMBW.png', coins: 0 },
  {name: 'Luigi', img_url: 'http://gamemories.files.wordpress.com/2012/08/luigi.jpg', coins: 0 },
  ])
