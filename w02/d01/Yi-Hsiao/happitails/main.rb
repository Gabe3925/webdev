require "pry"

require_relative "models/animal"
require_relative "models/client"
require_relative "models/shelter"

einstein_corgi = Animal.new("Einstein", "Corgi")
yihsiao_client = Client.new("Yi-Hsiao", 29)
local_shelter = Shelter.new("DC Shelter")

local_shelter.animals << einstein_corgi
local_shelter.adopt_pet(local_shelter.animals[0], yihsiao_client)
local_shelter.return_pet(yihsiao_client.pets[0], yihsiao_client)
