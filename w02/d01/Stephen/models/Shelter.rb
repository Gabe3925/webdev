# Stephen Stanwood (stephen@stanwoodsolutions.com)

class Shelter
  attr_accessor :name, :animals, :clients

  def initialize
    @name = "HappiTails"
    @animals = []
    @clients = []
  end

  def display_clients
    puts "Client list:\n** #{@clients.join("\n** ")}"
  end

  def display_animals
    puts "Animal list:\n** #{@animals.join("\n** ")}"
  end

  # Adds a specified pet to the shelter
  def add_pet(animal)
    @animals.push(animal)
  end

  # Adds a specified client to the shelter
  def add_client(client)
    @clients.push(client)
  end

  def adopt(animal, client)
    @animals.delete(animal)
    client.adopt(animal)
  end

  def return(client, animal)
    if (animal != nil)
      client.return(animal)
      @animals.push(animal)
    end
  end
end
