# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dog.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!("dogs")
Dog.create(name: "Max", age: 1, image: "max.jpg")
Dog.create(name: "Bella", age: 1, image: "bella.jpg")