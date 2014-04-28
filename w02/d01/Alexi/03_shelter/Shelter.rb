
# CLASS
class Shelter
  def initialize(name)
    @name             = name
    @animals          = []
    @clients          = []
  end

  # Menu option to add animals
  def add_animal
    species           = get_answer_to("What is the species?")
    name              = get_answer_to("What is the animal\'s name?")
    animal            = Animals.new(name, species)
    @animals           << animal
  end

  # Menu option to add client
  def add_client
    name              = get_answer_to("What is the client\'s name?")
    age               = get_answer_to("What is the client\'s age?")
    new_client        = Clients.new(name, age)
    @clients         << new_client
  end

  # Getter and Setter for 'name'
  def name=(name)
    @name = name
    return @name
  end

  def name
    return @name
  end

  # setter for 'animals'
  def animals
    return @animals
  end

  # setter for 'clients'
  def clients
    return @clients
  end

end
