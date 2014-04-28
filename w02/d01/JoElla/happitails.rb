require "pry"
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'


shelters = []


critterfarm = shelters.push(Shelter.new("CritterFarm"))

tomasina = Client.new("Tomasina", 45)

binding.pry
