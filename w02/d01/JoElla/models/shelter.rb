class Shelter
  def initialize(name)
  @name = name
  @animals = []
  @clients = []
  end

  attr_accessor :name
  attr_accessor :clients
  attr_accessor :animals

  def add_clients(name)
    @clients.push(name)
  end

  def add_animals(animal)
    @animals.push(animal)
  end

  def list_animals
      puts "Our animals are: #{@animals}"
  end

  def list_clients
    puts "Our clients are: #{@clients}"
  end

  def adoption(clientname, animal)
    #deletes animal from shelter's, pushes animal name to client's array
  end

  def return(client, animal)
    #moves animal from the client's array to the given shelter's array
  end




end
