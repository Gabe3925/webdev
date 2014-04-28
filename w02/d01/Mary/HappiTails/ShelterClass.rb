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

  def add_animal
    name = get_answer_to("What is the animal's name?")
    species = get_answer_to("What is the animal's species?")
    new_animal = Animal.new(name,species)
    @animals.push(new_animal)
    return @animals
  end

  def add_client
    name = get_answer_to("What is the client's name?")
    age = get_answer_to("What is the client's age?")
    new_client = Client.new(name,age)
    @clients.push(new_client)
    return @clients
  end

  def facilitate_adoption(client,animal)
    @animals.delete(animal)
  end

  def facilitate_return(client,animal)
    @animals.push(animal)
  end
end
