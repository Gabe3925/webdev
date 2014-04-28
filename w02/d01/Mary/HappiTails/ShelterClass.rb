class Shelter
  def initialize(name)
    @name = name
    @clients = []
    @animals = []
  end

  def name
    return @name
  end

  def display_clients
    return @clients
  end

  def display_animals
    return @animals
  end

  def add_animal(animal)
    @animals.push(animal)
    return @animals
  end

  def add_client(client)
    @clients.push(client)
    return @clients
  end

  def facilitate_adoption(client,animal)
    @animals.delete(animal)
  end

  def facilitate_return(client,animal)
    @animals.push(animal)
  end
end
