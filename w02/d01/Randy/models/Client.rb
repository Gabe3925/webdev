class Client
	attr_reader :name
	attr_reader :age
	attr_accessor :pets

	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end
end