require 'pry'

class Shelter
  def initialize(name, animals, clients)
    @name = name
    @animals = animals
    @clients = clients
  end

  def name
    return @name
  end

  def clients
    return @clients
  end

  def prints_clients_names
    @clients.each do |client|
      puts client
    end
  end

  def prints_animals_names
    @animals.each do |animal|
      puts animal
    end
  end

  def adopt_animal(name)
    @animals.delete(name)
    puts "#{name} was adopted!"
    return @animals
  end

  def return_animal(name)
    @animals.push(name)
    puts "#{name} was returned!"
    return @animals
  end
end

shelter_1 = Shelter.new("Fairy Tails", ["Lassie", "Shiloh", "Polly"], ["Brett", "Max", "Mark"])
shelter_1.prints_clients_names
shelter_1.prints_animals_names
shelter_1.return_animal("Kitty")
# A shelter should have a name
# A shelter can have multiple animals, but it doesn't start with any.
# A shelter can have multiple clients, but it doesn't start with any.
# A shelter should be able to display all of its clients.
# A shelter should be able to display all of its animals.
# A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
# A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
