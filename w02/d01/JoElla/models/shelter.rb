class Shelter
  def initialize(name)
  @name = name
  @animals = []
  @clients = []
  end

  attr_accessor :name
  attr_accessor :clients

  def add_clients(name)
    @clients.push(name)
  end

  def add_animals(animal)
    @animals.push(animal)
  end

  def adoption(shelter, client, animal)
    #moves animal from shelter's array to client's

  end

  def return(shelter, client, animal)
    #moves animal from the client's array to the given shelter's array
  end



end
