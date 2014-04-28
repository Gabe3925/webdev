class Shelter
  def initialize(name)
    @name = name
    @animals = ''
    @clients = ''
    @animals_list = []
    @clients_list = []
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
  end

  def animals
    return @animals
  end

  def clients
    return @clients
  end

    def animals_list
    return @animals_list
  end

  def animals_list=(animals_list)
    @animals_list = animals_list
  end

  def clients_list
    return @clients_list
  end

  def clients_list=(clients_list)
    @clients_list = clients_list
  end

  # Add an animal
  def add_animal
    animal_name = get_answer_to("What's the animal's name?")
    animal_species = get_answer_to("What's the species?")
    new_animal = Animal.new(animal_name, animal_species)
    @animals_list.push(new_animal)
  end

  # Add a client
  def add_client
    client_name = get_answer_to("What's the client's name?")
    client_age = get_answer_to("How old is the client?")
    new_client = Client.new(client_name, client_age)
    @clients_list.push(new_client)
  end

  def list_animals
    @animals_list.each_with_index do |animal, index|
      puts "#{animal.name} is a #{animal.species}."
    end
    # Returning nil to avoid terminal output of entire array
    return nil
  end

  def list_clients
    @clients_list.each_with_index do |client, index|
      puts "#{client.name} is #{client.age} years old."
    end
    # Returning nil to avoid terminal output of entire array
    return nil
  end

end
