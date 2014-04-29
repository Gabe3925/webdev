

class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def pets
    return @pets
  end

  def print_client
    return "#{@name}, who is #{@age}."
  end

  def add_animal
    animal = Animal.new(name,species)
    @pets.push(animal)
    retun @pets
  end
end
