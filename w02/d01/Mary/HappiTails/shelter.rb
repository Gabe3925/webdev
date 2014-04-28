class Shelter
  def initialize(name)
    @name = name
    @clients = []
    @animals = []
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

  def add_animal
    name = get_answer_to("What is the animal's name?")
    species = get_answer_to("What is the animal's species?")
    new_animal = Animal.new(name,species)
    new_animal_sentence = new_animal.print_animal
    @animals.push(new_animal_sentence)
    return @animals
  end

  def add_client
    name = get_answer_to("What is the client's name?")
    age = get_answer_to("What is the client's age?")
    new_client = Client.new(name,age)
    new_client_sentence = new_client.print_client
    @clients.push(new_client_sentence)
    return @clients
  end

  def facilitate_adoption
    name = get_answer_to("What is the client's name?")
    age = get_answer_to("What is the client's age?")
    new_client = Client.new(name,age)
    new_client_sentence = new_client.print_client
    @clients.push(new_client_sentence)
    puts @animals
    puts "Which animal would you like to adopt from the above list?"
    animal_to_adopt = gets.chomp
    @animals.delete(animal_to_adopt)
    new_client.adopt_pet(animal_to_adopt)
  end

  def facilitate_put_up_for_adoption
    name = get_answer_to("What is the new client's name?")
    age = get_answer_to("What is the client's age?")
    new_client = Client.new(name,age)
    new_client_sentence = new_client.print_client
    @clients.push(new_client_sentence)

    name = get_answer_to("What is the animal's name that you would like to put up for adoption?")
    species = get_answer_to("What is that animal's species?")
    new_animal = Animal.new(name,species)
    new_animal_sentence = new_animal.print_animal
    @animals.push(new_animal_sentence)
  end
end
