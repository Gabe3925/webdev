# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dog.delete_all
Dog.create(name: "Sparky", age: 1, image_url: "http://www.123callingalldogs.com/savedimages/macexplorer_com-puppy-dog-26.jpg")
