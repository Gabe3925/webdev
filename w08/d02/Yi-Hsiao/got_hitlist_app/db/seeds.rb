# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p "Destroyed all characters"
Character.destroy_all

# Arya's hit list
p "Adding Arya's hit list"
Character.create(name: "King Joffrey", dead: true)
Character.create(name: "Ser Amory", dead: true)
Character.create(name: "The Tickler", dead: true)
Character.create(name: "Polliver", dead: true)
Character.create(name: "Ser Gregor", dead: true)
Character.create(name: "Raff the Sweetling", dead: true)
Character.create(name: "Chiswyck", dead: true)
Character.create(name: "Weese", dead: true)
Character.create(name: "Ilyn Payne")
Character.create(name: "Meryn Trant")
Character.create(name: "Queen Cersei")
Character.create(name: "Dunsen")
Character.create(name: "The Hound")

p "Finished seeding"