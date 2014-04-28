class Shelter
	attr_accessor :animals
	attr_accessor :clients
	def initialize (name)
		@name = name
		@animals = []
		@clients = []
	end
end
