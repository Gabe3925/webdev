require_relative 'animal'

class Client
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end
end
