

class Client
  def initialize (name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    return @name
  end

  def add_pet(pet)
    @pets.push(pet)
  end

  def remove_pet(pet)
    @pets.delete(pet)
  end
end
