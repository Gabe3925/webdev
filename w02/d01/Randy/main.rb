require 'pry'

require_relative 'models/Animal'
require_relative 'models/Client'
require_relative 'models/Shelter'

dog1 = Animal.new("Fido", "Dog")
dog1.toys << ("Tennis Ball")
dog1.toys << ("Frisbee")
totally_legit_shelter = Shelter.new("Totally Legit Animals")
totally_legit_shelter.animals << dog1

binding.pry




# def adoption
# 	self.animals.each do |animal|
# 		puts "#{animal.name}"
# 	end
# end
