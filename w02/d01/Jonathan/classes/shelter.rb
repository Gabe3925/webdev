# ++++++++++++++++++++++
# Shelter Class
# ++++++++++++++++++++++

class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

# Shelter Getters
# ++++++++++++++
    def name
      return @name
    end

    def animals
      @animals
    end

    def clients
      @clients
    end

    def add_animal
      name = get_answer_to("Animal name?")
      species = get_answer_to("Species type?")
      new_animal = Animal.new(name, species)
      @animals << new_animal
    end

    def add_client
      name = get_answer_to("Client name?")
      age = get_answer_to("How old is the client?")
      new_client = Client.new(name, age)
      @clients << new_client
    end

    def print_animals
      animals.each do |animal|
        puts
        puts "Animals:"
        puts "#{animal.name}"
        puts "#{animal.species}"
        puts
      end
    end

    def print_clients
      clients.each do |client|
        puts
        puts "Clients:"
        puts "#{client.name}"
        puts "#{client.age}"
        puts
      end
    end

    def index_animals
        puts
        puts "Animals to adopt:"
        animals.each_with_index do |animal, index|
        puts "#{index + 1}: #{animal.name}"
      end
        puts "Select an animal from the roster"
        selection = gets.chomp.to_i
        return animals[selection]
    end

end


