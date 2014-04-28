class Shelter
  def initialize(name="")
    @name = name
    @animals = []
    @clients = []
  end

  def name
    return @name
  end

  def clients
    return @clients
  end

  def animals
    return @animals
  end

  def add_client(client)
    @clients.push(client)
  end

  def add_animal(animal)
    @animals.push(animal)
  end

  def adopt_animal(client, animal)
    client.add_pet(animal)
    @animals.delete(animal)
  end

  def return_animal(client, animal)
    @animals.push(animal)
    client.remove_pet(animal)
  end
end
