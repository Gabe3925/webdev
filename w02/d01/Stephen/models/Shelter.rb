# Stephen Stanwood (stephen@stanwoodsolutions.com)

class Shelter
  attr_accessor :name

  def initialize
    @animals = []
    @clients = []
  end

  def display_clients
    puts "Client list: #{@clients.join(', ')}"
  end

  def display_animals
    puts "Animal list: #{@animals.join(', ')}"
  end

  def adopt_pet(animal)
    @animals.delete(animal)
  end

  def return_pet(animal)
    @animals.push(animal)
  end
end
