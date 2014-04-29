require_relative 'constants.rb'

shelter_1 = Shelter.new("Friskees Shelter of God")
client_1 = Client.new("Joe Blow", 27)
animal_1 = Animal.new("Poppy", "Dog")

  #move client and animal into shelter 1
shelter_1.import_client client_1
shelter_1.import_animal animal_1 